import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/sign_up_provider.dart';
import '../../../../repositories/auth/entities/sign_up_entity.dart';

class SignUpButton extends ConsumerWidget {
  const SignUpButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: SizedBox(
        width: double.infinity,
        height: 52.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            side: const BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
            ),
            minimumSize: const Size(double.infinity, 52.0),
          ),
          onPressed: () {
            final signUpEntity = SignUpEntity(
              emailController.text,
              passwordController.text,
              nameController.text,
            );

            ref.read(signUpProvider(signUpEntity).future);
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              SizedBox(width: 8),
              Text(
                'REGISTER',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
