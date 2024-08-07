import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../repositories/auth/entities/sign_in_entity.dart';
import '../../../../routes/app_route.dart';
import '../providers/sign_in_provider.dart';
import '../widgets/sign_in_button.dart';
import '../widgets/sign_in_field.dart';

@RoutePage()
class SignInScreen extends ConsumerWidget {
  SignInScreen({super.key});

  final TextEditingController emailController =
  TextEditingController(text: 'testuser@gmail.com');
  final TextEditingController passwordController =
  TextEditingController(text: 'password');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(signInProvider, (previous, next) {
      next.whenOrNull(
        data: (_) {
          AutoRouter.of(context)
              .pushAndPopUntil(MapRoute(), predicate: (_) => false);
        },
        error: (error, stackTrace) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: ${error.toString()}')),
          );
        },
      );
    });

    final signInState = ref.watch(signInProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.router.push(MapRoute()),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              AuthField(
                hintText: 'Email',
                controller: emailController,
                prefixIcon: Icons.email,
              ),
              const SizedBox(height: 16),
              AuthField(
                hintText: 'Password',
                obscureText: true,
                controller: passwordController,
                prefixIcon: Icons.lock,
              ),
              const SizedBox(height: 24),
              signInState.when(
                loading: () =>
                const Center(child: CircularProgressIndicator()),
                data: (_) => Center(
                  child: SignInButton(
                    usernameController: emailController,
                    passwordController: passwordController,
                  ),
                ),
                error: (error, stackTrace) => const Center(
                  child: Text(
                    'Sign in failed, please try again.',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(SignUpRoute());
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
