import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../routes/app_route.dart';
import '../providers/login_providers.dart';
import '../providers/state/login_state.dart';
import '../widgets/login_button.dart';
import '../widgets/login_field.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});

  final TextEditingController emailController =
  TextEditingController(text: 'testuser@gmail.com');
  final TextEditingController passwordController =
  TextEditingController(text: 'password');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginStateNotifierProvider);

    ref.listen(
      loginStateNotifierProvider.select((value) {
        print('loginStateNotifierProvider: $value');
        return value;
      }),
          (previous, next) {
        if (next is Success) {
          AutoRouter.of(context)
              .pushAndPopUntil(MapRoute(), predicate: (_) => false);
        }
      },
    );

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
              state.maybeMap(
                loading: (_) => const Center(child: CircularProgressIndicator()),
                orElse: () => Center(
                  child: LoginButton(
                    usernameController: emailController,
                    passwordController: passwordController,
                    ref: ref,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(RegisterRoute());
                  },
                  child: const Text(
                    'Register',
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
