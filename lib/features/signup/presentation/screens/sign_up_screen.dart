import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../routes/app_route.dart';
import '../../../signin/presentation/widgets/sign_in_field.dart';
import '../providers/sign_up_provider.dart';
import '../widgets/sign_up_button.dart';

@RoutePage()
class SignUpScreen extends ConsumerStatefulWidget {
  SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final TextEditingController emailController =
  TextEditingController(text: 'testuser@gmail.com');
  final TextEditingController passwordController =
  TextEditingController(text: 'password');
  final TextEditingController nameController =
  TextEditingController(text: 'User Test');
  final TextEditingController phoneNumberController =
  TextEditingController(text: '+84836762402');

  @override
  Widget build(BuildContext context) {
    ref.listen<SignUpState>(signUpProvider, (previous, next) {
      if (next == SignUpState.success) {
        AutoRouter.of(context).pushAndPopUntil(MapRoute(), predicate: (_) => false);
      } else if (next == SignUpState.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Sign up failed, please try again.')),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.router.push(SignInRoute()),
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
                  'Register',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              AuthField(
                hintText: 'Name',
                controller: nameController,
                prefixIcon: Icons.person,
              ),
              const SizedBox(height: 16),
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
              const SizedBox(height: 16),
              AuthField(
                hintText: 'Phone number',
                controller: phoneNumberController,
                prefixIcon: Icons.person,
              ),
              const SizedBox(height: 24),
              SignUpButton(
                emailController: emailController,
                passwordController: passwordController,
                nameController: nameController,
                phoneNumberController: phoneNumberController,
              ),

              const SizedBox(height: 16),
              Center(
                child: GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(SignInRoute());
                  },
                  child: const Text(
                    'Already have an account? Sign in',
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
