import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/auth/entities/sign_in_entity.dart';
import '../../../../shared/core/localization/localization.dart';
import '../../../../shared/presentation/theme/app_colors.dart';
import '../../../../shared/presentation/theme/text_styles.dart';
import '../../../../shared/presentation/widgets/button.dart';
import '../providers/sign_in_provider.dart';

class SignInButton extends ConsumerWidget {
  const SignInButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.05, vertical: height * 0.01),
      child: Button(
        onTap: () {
          if (formKey.currentState?.validate() ?? false) {
            final signInEntity = SignInEntity(
              emailController.text,
              passwordController.text,
            );

            ref.read(signInProvider.notifier).signIn(signInEntity);
          }
        },
        fillColor: AppColors.primary,
        border: false,
        shadow: true,
        shadowOpacity: 0.35,
        padding: EdgeInsets.all(height * 0.005),
        child: Text(
          AppLocalizations.of(context).translate('SIGN IN'),
          style: AppTextStyles.body
              .copyWith(fontSize: height * 0.02, color: AppColors.white),
        ),
      ),
    );
  }
}
