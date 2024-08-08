import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../routes/app_route.dart';
import '../../../../shared/core/localization/localization.dart';
import '../providers/sign_in_provider.dart';
import '../widgets/sign_in_form.dart';

@RoutePage()
class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    ref.listen<SignInState>(signInProvider, (previous, next) {
      if (next == SignInState.success) {
        AutoRouter.of(context).pushAndPopUntil(MapRoute(), predicate: (_) => false);
      } else if (next == SignInState.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:
            Text(
                AppLocalizations.of(context).translate('Sign in failed, please try again.'),
            )
          ),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => AutoRouter.of(context).push(MapRoute()),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: height * 0.02),
          child: SignInForm(
            emailController: emailController,
            passwordController: passwordController,
          ),
        ),
      ),
    );
  }
}
