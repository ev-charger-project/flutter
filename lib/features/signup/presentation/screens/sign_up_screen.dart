import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../routes/app_route.dart';
import '../../../../shared/core/localization/localization.dart';
import '../providers/sign_up_provider.dart';
import '../widgets/sign_up_form.dart';

@RoutePage()
class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    ref.listen<SignUpState>(signUpProvider, (previous, next) {
      if (next == SignUpState.success) {
        AutoRouter.of(context).pushAndPopUntil(MapRoute(), predicate: (_) => false);
      } else if (next == SignUpState.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:
            Text(
                AppLocalizations.of(context).translate('Sign up failed, please try again.'),
            )
          ),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.onSurface),
          onPressed: () => AutoRouter.of(context).push(const SignInRoute()),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: height * 0.02),
          child: SignUpForm(
            emailController: emailController,
            passwordController: passwordController,
            nameController: nameController,
            phoneNumberController: phoneNumberController,
          ),
        ),
      ),
    );
  }
}
