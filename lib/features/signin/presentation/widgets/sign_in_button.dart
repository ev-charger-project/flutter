import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../repositories/auth/entities/sign_in_entity.dart';
import '../../../../routes/app_route.dart';
import '../providers/sign_in_provider.dart';

class SignInButton extends ConsumerWidget {
  const SignInButton({
    super.key,
    required this.usernameController,
    required this.passwordController,
    this.icon = Icons.arrow_forward, // Default icon, can be customized
  });

  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final IconData icon; // Icon parameter for prefixIcon

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInState = ref.watch(signInProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: SizedBox(
        width: double.infinity,
        height: 52.0, // Height to make it square
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            side: const BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0)), // Square corners
            ),
            minimumSize: const Size(double.infinity, 52.0),
          ),
          onPressed: signInState == SignInState.loading
              ? null
              : () {
            ref
                .read(signInProvider.notifier)
                .signIn(SignInEntity(
              usernameController.text,
              passwordController.text,
            ));
          },
          child: signInState == SignInState.loading
              ? const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white, // Color of the icon
              ),
              const SizedBox(width: 8), // Spacing between icon and text
              const Text(
                'NEXT',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
