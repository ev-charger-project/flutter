import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../repositories/auth/entities/sign_in_entity.dart';
import '../../../../routes/app_route.dart';
import '../providers/sign_in_provider.dart';
import '../widgets/sign_in_button.dart';
import '../widgets/sign_in_field.dart';

@RoutePage()
class SignInScreen extends ConsumerStatefulWidget {
  SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final TextEditingController emailController =
  TextEditingController(text: 'testuser@gmail.com');
  final TextEditingController passwordController =
  TextEditingController(text: 'password');

  @override
  Widget build(BuildContext context) {
    ref.listen<SignInState>(signInProvider, (previous, next) {
      if (next == SignInState.success) {
        AutoRouter.of(context).pushAndPopUntil(MapRoute(), predicate: (_) => false);
      } else if (next == SignInState.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Sign in failed, please try again.')),
        );
      }
    });

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
              SignInButton(
                usernameController: emailController,
                passwordController: passwordController,
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
