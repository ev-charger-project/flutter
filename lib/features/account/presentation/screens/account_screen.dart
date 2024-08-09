import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../routes/app_route.dart';
import '../../../../shared/domain/providers/auth/auth_provider.dart';
import '../../../../shared/domain/providers/user/user_provider.dart';
import '../providers/sign_out_provider.dart';
import '../widgets/favourite.dart';

@RoutePage()
class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAuthenticated = ref.watch(authProvider).value;
    final signOutState = ref.watch(signOutProvider);
    final userAsyncValue = ref.watch(userProvider);

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    ref.listen<SignOutState>(signOutProvider, (previous, next) {
      if (next == SignOutState.success) {
        context.router.replaceAll([MapRoute()]);
      } else if (next == SignOutState.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to log out')),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.onSurface),
          onPressed: () => context.router.pop(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: [
              if (isAuthenticated == true) ...[
                userAsyncValue.when(
                  data: (user) {
                    return Column(
                      children: [
                        CircleAvatar(
                          radius: width * 0.15,
                          backgroundImage: const AssetImage(
                            'assets/images/avatar_placeholder.png',
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        Text(
                          user?.username ?? 'User Name',
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: height * 0.01),
                        Text(
                          user?.email ?? 'user@example.com',
                          style: const TextStyle(
                              fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: height * 0.01),
                        SizedBox(height: height * 0.03),
                      ],
                    );
                  },
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  error: (error, stack) => Center(
                    child: Text(
                      'Failed to load user data: $error',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Expanded(
                  child: SingleChildScrollView(
                    child: Favorite(),
                  ),
                ),
                const Spacer(),
              ],
              ElevatedButton(
                onPressed: () {
                  if (isAuthenticated == true) {
                    ref.read(signOutProvider.notifier).signOut();
                  } else {
                    context.router.push(const SignInRoute());
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, height * 0.055),
                  backgroundColor: Colors.black,
                  side: const BorderSide(color: Colors.black, width: 2.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0.0),
                    ),
                  ),
                ),
                child: signOutState == SignOutState.loading
                    ? const CircularProgressIndicator(color: Colors.white)
                    : Text(
                  isAuthenticated == true ? 'Log Out' : 'Log In',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
