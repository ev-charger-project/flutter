import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/login_providers.dart';

class AutButton extends StatelessWidget {
  const AutButton({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.ref,
  });

  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
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
              borderRadius:
                  BorderRadius.all(Radius.circular(0.0)), // Square corners
            ),
            minimumSize: Size(double.infinity, 52.0),
          ),
          onPressed: () {
            ref.read(loginStateNotifierProvider.notifier).loginUser(
                  usernameController.text,
                  passwordController.text,
                );
          },
          child: const Text(
            'NEXT',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
