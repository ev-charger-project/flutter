import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/shared/domain/providers/user/fav_provider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../routes/app_route.dart';
import '../../../../shared/domain/providers/auth/auth_provider.dart';
import '../../../location/presentation/providers/selected_location_id_provider.dart';
import '../../../mapview/domain/providers/is_info_visible_provider.dart';
import '../providers/sign_out_provider.dart';
import '../widgets/favourite.dart';

@RoutePage()
class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAuthenticated = ref.watch(authProvider).value;
    final signOutState = ref.watch(signOutProvider);

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    ref.listen<SignOutState>(signOutProvider, (previous, next) {
      if (next == SignOutState.success) {
        context.router.replaceAll([const SplashRoute()]);
      } else if (next == SignOutState.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to log out')),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.onSurface),
          onPressed: () => context.router.pop(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: width * 0.15,
                backgroundImage: const AssetImage('assets/images/avatar_placeholder.png'), // Placeholder for user avatar
              ),
              SizedBox(height: height * 0.02),
              const Text(
                'User Name', // Replace with actual user name from user data
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.01),
              const Text(
                'user@example.com', // Replace with actual email from user data
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: height * 0.03),
              ElevatedButton(
                onPressed: () {
                  if (isAuthenticated!) {
                    ref.read(signOutProvider.notifier).signOut();
                  } else {
                    context.router.push(const SignInRoute());
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, height * 0.055),
                  backgroundColor: Colors.black,
                  side: const BorderSide(
                      color: Colors.black,
                      width: 2.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0.0),
                    ),
                  ),
                ),
                child: signOutState == SignOutState.loading
                    ? const CircularProgressIndicator(color: Colors.white)
                    : Text(
                  isAuthenticated! ? 'Log Out' : 'Log In',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 24),
              const Favorite(),
            ],
          ),
        ),
      ),
    );
  }
}

