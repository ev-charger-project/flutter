import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/account/presentation/widgets/account_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../routes/app_route.dart';
import '../../../../shared/domain/providers/auth/auth_provider.dart';
import '../providers/sign_out_provider.dart';
import '../widgets/favourite.dart';
import '../../../../shared/domain/providers/user/fav_provider.dart';
import '../widgets/user_profile.dart';

@RoutePage()
class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAuthenticated = ref.watch(authProvider).value;
    final signOutState = ref.watch(signOutProvider);
    ref.refresh(favProvider);

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
          icon: Icon(Icons.arrow_back,
              color: Theme.of(context).colorScheme.onSurface),
          onPressed: () => context.router.pop(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isAuthenticated == true) ...[
                const UserProfile(),
                const SizedBox(height: 24),
                SizedBox(
                  height: height * 0.5,
                  child: const SingleChildScrollView(
                    child: Favorite(),
                  ),
                ),
              ] else ...[
                Center(
                  child: Text(
                    'Please sign in to view your account details and favorites.',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
              Align(
                alignment: isAuthenticated == true
                    ? Alignment.bottomCenter
                    : Alignment.center,
                child: AccountButton(
                  buttonType: isAuthenticated == true
                      ? ButtonType.signOut
                      : ButtonType.signIn,
                  onTap: () {
                    if (isAuthenticated == true) {
                      ref.read(signOutProvider.notifier).signOut();
                    } else {
                      context.router.push(const SignInRoute());
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
