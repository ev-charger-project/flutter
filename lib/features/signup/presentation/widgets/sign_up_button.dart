import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/core/localization/localization.dart';
import '../../../../shared/presentation/theme/app_colors.dart';
import '../../../../shared/presentation/theme/text_styles.dart';
import '../../../../shared/presentation/widgets/button.dart';
import '../providers/sign_up_provider.dart';
import '../../../../repositories/auth/entities/sign_up_entity.dart';

class SignUpButton extends ConsumerWidget {
  const SignUpButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
    required this.phoneNumberController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final TextEditingController phoneNumberController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.01),
      child: Button(
        onTap: () {
          if (formKey.currentState?.validate() ?? false) {
            final signUpEntity = SignUpEntity(
              emailController.text,
              passwordController.text,
              nameController.text,
              phoneNumberController.text,
            );

            ref.read(signUpProvider.notifier).signUp(signUpEntity);
          }
        },
        fillColor: AppColors.lightGreen,
        border: false,
        shadow: true,
        shadowOpacity: 0.35,
        padding: EdgeInsets.all(height * 0.005),
        child: Text(
          AppLocalizations.of(context).translate('SIGN UP'),
          style: AppTextStyles.body
              .copyWith(fontSize: height * 0.02, color: AppColors.primary),
        ),
      ),
    );
  }
}
