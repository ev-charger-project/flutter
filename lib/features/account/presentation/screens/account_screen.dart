import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../routes/app_route.dart';
import '../../../../shared/domain/providers/auth/auth_provider.dart';
import '../providers/sign_out_provider.dart';

@RoutePage()
class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAuthenticated = ref.watch(authProvider).value;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.router.pop(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/avatar_placeholder.png'), // Placeholder for user avatar
              ),
              const SizedBox(height: 16),
              const Text(
                'User Name', // Replace with actual user name from user data
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'user@example.com', // Replace with actual email from user data
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () async {
                  if (isAuthenticated) {
                    final result = await ref.read(signOutProvider.future);
                    if (result) {
                      context.router.replaceAll([const SplashRoute()]);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Failed to log out')),
                      );
                    }
                  } else {
                    context.router.push(SignInRoute());
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 52.0),
                  backgroundColor: Colors.black,
                  side: const BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0.0),
                    ),
                  ),
                ),
                child: Text(
                  isAuthenticated! ? 'Log Out' : 'Log In',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
