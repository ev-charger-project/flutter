import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/signin/presentation/widgets/sign_in_button.dart';
import 'package:ev_charger/shared/core/validation/regex.dart';
import 'package:flutter/material.dart';
import '../../../../routes/app_route.dart';
import '../../../../shared/core/localization/localization.dart';
import '../../../../shared/presentation/widgets/auth_field.dart';

class SignInForm extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const SignInForm({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
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
          Center(
            child: Text(
              AppLocalizations.of(context).translate('Sign In'),
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: height * 0.03),
          AuthField(
            hintText: 'Email',
            controller: widget.emailController,
            prefixIcon: Icons.email,
            regex: CheckValidate.email,
            errorMessage: AppLocalizations.of(context).translate('Please enter a valid email'),
          ),
          SizedBox(height: height * 0.015),
          AuthField(
            hintText: 'Password',
            obscureText: true,
            controller: widget.passwordController,
            prefixIcon: Icons.lock,
            regex: CheckValidate.password,
            errorMessage: AppLocalizations.of(context).translate('Password must be at least 8 characters long and include a number'),
          ),
          SizedBox(height: height * 0.03),
          SignInButton(
            formKey: _formKey,
            emailController: widget.emailController,
            passwordController: widget.passwordController,
          ),
          SizedBox(height: height * 0.01),
          Center(
            child: GestureDetector(
              onTap: () {
                AutoRouter.of(context).push(const SignUpRoute());
              },
              child: Text(
                AppLocalizations.of(context).translate('Sign Up'),
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
