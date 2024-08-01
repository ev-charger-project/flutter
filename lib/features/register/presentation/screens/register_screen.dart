import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../routes/app_route.dart';
import '../../../account/presentation/providers/state/logout_state.dart';
import '../../../login/presentation/widgets/login_field.dart';
import '../providers/register_provider.dart';
import '../widgets/register_button.dart';

@RoutePage()
class RegisterScreen extends ConsumerWidget {
  RegisterScreen({super.key});

  final TextEditingController emailController =
  TextEditingController(text: 'huy@gmail.com');
  final TextEditingController passwordController =
  TextEditingController(text: 'password');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerStateNotifierProvider);

    ref.listen(
      registerStateNotifierProvider.select((value) => value),
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
          onPressed: () => context.router.push(LoginRoute()),
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
                orElse: () => RegisterButton(
                  emailController: emailController,
                  passwordController: passwordController,
                  ref: ref,
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(LoginRoute());
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
