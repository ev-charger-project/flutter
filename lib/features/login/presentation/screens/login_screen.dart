import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../routes/app_route.dart';
import '../providers/login_providers.dart';
import '../providers/state/login_state.dart';
import '../widgets/auth_button.dart';
import '../widgets/auth_field.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget {

  LoginScreen({super.key});

  final TextEditingController usernameController =
      TextEditingController(text: 'testuser@gmail.com');
  final TextEditingController passwordController =
      TextEditingController(text: 'password');
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginStateNotifierProvider);
    ref.listen(
      loginStateNotifierProvider.select((value)
      {
        print('loginStateNotifierProvider: $value');
        return value;
      }),
      ((previous, next) {
        if (next is Success) {
          AutoRouter.of(context)
              .pushAndPopUntil(MapRoute(), predicate: (_) => false);
        }
      }),
    );
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            const Hero(tag: "Login",
            child: Text('Login', style: TextStyle(fontSize: 36))),
            AuthField(
              hintText: 'Username',
              controller: usernameController,
            ),
            AuthField(
              hintText: 'Password',
              obscureText: true,
              controller: passwordController,
            ),
            state.maybeMap(
              loading: (_) => const Center(child: CircularProgressIndicator()),
              orElse: () => AutButton(
                  usernameController: usernameController,
                  passwordController: passwordController,
                  ref: ref),
            ),
          ],
        ),
      ),
    );
  }
}
