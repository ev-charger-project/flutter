import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../repositories/auth/entities/sign_up_entity.dart';
import '../../../../routes/app_route.dart';
import '../../../signin/presentation/widgets/sign_in_field.dart';
import '../providers/sign_up_provider.dart';
import '../widgets/sign_up_button.dart';

@RoutePage()
class SignUpScreen extends ConsumerWidget {
  SignUpScreen({super.key});

  final TextEditingController emailController =
  TextEditingController(text: 'testuser@gmail.com');
  final TextEditingController passwordController =
  TextEditingController(text: 'password');
  final TextEditingController nameController =
  TextEditingController(text: 'User Test');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpState = ref.watch(signUpProvider(
      SignUpEntity(
        emailController.text,
        passwordController.text,
        nameController.text,
      ),
    ));

    ref.listen<AsyncValue<void>>(signUpProvider(SignUpEntity(
      emailController.text,
      passwordController.text,
      nameController.text
    )), (previous, next) {
      next.when(
        data: (_) {
          AutoRouter.of(context).pushAndPopUntil(
            MapRoute(),
            predicate: (_) => false,
          );
        },
        error: (error, stackTrace) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: ${error.toString()}')),
          );
        },
        loading: () {
          // Show loading dialog or indicator if needed
        },
      );
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
              const SizedBox(height: 24),
              signUpState.maybeWhen(
                loading: () => const Center(child: CircularProgressIndicator()),
                orElse: () => SignUpButton(
                  emailController: emailController,
                  passwordController: passwordController,
                  nameController: nameController,
                ),
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
