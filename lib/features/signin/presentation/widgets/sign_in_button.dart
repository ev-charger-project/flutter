import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/auth/entities/sign_in_entity.dart';
import '../../../../shared/core/localization/localization.dart';
import '../providers/sign_in_provider.dart';

class SignInButton extends ConsumerWidget {
  const SignInButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

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
              final signInEntity = SignInEntity(
                emailController.text,
                passwordController.text,
              );

              ref.read(signInProvider.notifier).signIn(signInEntity);
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
                AppLocalizations.of(context).translate('SIGN IN'),
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
