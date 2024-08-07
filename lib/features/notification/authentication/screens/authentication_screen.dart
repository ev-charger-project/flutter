import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/authentication_button.dart';
import '../widgets/authentication_content.dart';

class AuthenticationScreen extends ConsumerWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return AlertDialog(
      content: SizedBox(
        height: height * 0.4,
        width: width * 0.6,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AuthenticationContent(),
            const Spacer(),
            AuthenticationButton(
              buttonType: ButtonType.logIn,

              onTap: () async {
                context.router.push(SignInRoute());
                Navigator.of(context).pop();
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            AuthenticationButton(
              buttonType: ButtonType.cancel,
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
