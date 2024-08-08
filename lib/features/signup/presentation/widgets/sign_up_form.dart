import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/shared/core/validation/regex.dart';
import 'package:flutter/material.dart';
import '../../../../routes/app_route.dart';
import '../../../../shared/core/localization/localization.dart';
import '../../../../shared/presentation/widgets/auth_field.dart';
import '../widgets/sign_up_button.dart';

class SignUpForm extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final TextEditingController phoneNumberController;

  const SignUpForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
    required this.phoneNumberController,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: height * 0.03),
          AuthField(
            hintText: AppLocalizations.of(context).translate('Name'),
            controller: widget.nameController,
            prefixIcon: Icons.person,
            regex: CheckValidate.name,
            errorMessage: AppLocalizations.of(context).translate('Please enter a valid name'),
          ),
          SizedBox(height: height * 0.015),
          AuthField(
            hintText: 'Email',
            controller: widget.emailController,
            prefixIcon: Icons.email,
            regex: CheckValidate.email,
            errorMessage: AppLocalizations.of(context).translate('Please enter a valid email'),
          ),
          SizedBox(height: height * 0.015),
          AuthField(
            hintText: AppLocalizations.of(context).translate('Password'),
            obscureText: true,
            controller: widget.passwordController,
            prefixIcon: Icons.lock,
            regex: CheckValidate.password,
            errorMessage: AppLocalizations.of(context).translate('Password must be at least 8 characters long and include a number'),
          ),
          SizedBox(height: height * 0.015),
          AuthField(
            hintText: AppLocalizations.of(context).translate('Phone Number'),
            controller: widget.phoneNumberController,
            prefixIcon: Icons.phone,
            regex: CheckValidate.phoneNumber,
            errorMessage: AppLocalizations.of(context).translate('Please enter a valid phone number'),
          ),
          SizedBox(height: height * 0.03),
          SignUpButton(
            formKey: _formKey,
            emailController: widget.emailController,
            passwordController: widget.passwordController,
            nameController: widget.nameController,
            phoneNumberController: widget.phoneNumberController,
          ),
          SizedBox(height: height * 0.01),
          Center(
            child: GestureDetector(
              onTap: () {
                AutoRouter.of(context).push(const SignInRoute());
              },
              child: Text(
                AppLocalizations.of(context).translate('Already have an account? Sign in'),
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
