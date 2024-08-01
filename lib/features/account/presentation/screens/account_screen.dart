import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../routes/app_route.dart';
import '../../domain/providers/logout_provider.dart';
import '../../domain/providers/state/logout_state.dart';

@RoutePage()
class AccountScreen extends ConsumerStatefulWidget {

  const AccountScreen({super.key});

  @override
  ConsumerState<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends ConsumerState<AccountScreen> {
  @override
  Widget build(BuildContext context) {
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
            ref.read(logoutStateNotifierProvider.notifier).logoutUser();
          },
          child: const Text('Log Out'),
        ),
      ),
    );
  }
}
