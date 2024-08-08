import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/core/localization/localization.dart';
import '../providers/sign_up_provider.dart';
import '../../../../repositories/auth/entities/sign_up_entity.dart';

class SignUpButton extends ConsumerWidget {
  const SignUpButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
    required this.phoneNumberController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final TextEditingController phoneNumberController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.01),
      child: SizedBox(
        width: double.infinity,
        height: height * 0.055,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            side: BorderSide(
              color: Colors.black,
              width: width * 0.01,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
            ),
            minimumSize: Size(double.infinity, width * 0.055),
          ),
          onPressed: () {
            if (formKey.currentState?.validate() ?? false) {
              final signUpEntity = SignUpEntity(
                emailController.text,
                passwordController.text,
                nameController.text,
                phoneNumberController.text,
              );

              ref.read(signUpProvider.notifier).signUp(signUpEntity);
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              SizedBox(width: width * 0.015),
              Text(
                AppLocalizations.of(context).translate('SIGN UP'),
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
