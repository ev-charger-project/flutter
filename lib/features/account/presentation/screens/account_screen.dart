import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../routes/app_route.dart';
import '../../../../shared/domain/providers/auth/auth_provider.dart';
import '../providers/logout_provider.dart';
import '../providers/state/logout_state.dart';

@RoutePage()
class AccountScreen extends ConsumerStatefulWidget {
  const AccountScreen({super.key});

  @override
  ConsumerState<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends ConsumerState<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    final isAuthenticated = ref.watch(authCheckProvider);

    ref.listen<LogoutState>(logoutStateNotifierProvider, (previous, next) {
      next.maybeWhen(
        success: () {
          context.router.replaceAll([const SplashRoute()]);
        },
        failure: () {
          throw Exception("Error: Can't log out");
        },
        orElse: () {},
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (isAuthenticated) {
              ref.read(logoutStateNotifierProvider.notifier).logoutUser();
            } else {
              context.router.push(LoginRoute());
            }
          },
          child: Text(isAuthenticated ? 'Log Out' : 'Log In'),
        ),
      ),
    );
  }
}
