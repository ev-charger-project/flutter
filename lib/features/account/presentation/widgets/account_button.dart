import 'package:ev_charger/shared/presentation/theme/app_colors.dart';
import 'package:ev_charger/shared/presentation/theme/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../shared/presentation/widgets/button.dart';

enum ButtonType {
  signIn,
  signOut,
}

extension ButtonTypeExtension on ButtonType {
  String get text {
    switch (this) {
      case ButtonType.signIn:
        return 'Sign in';
      case ButtonType.signOut:
        return 'Sign out';
    }
  }

  Color get fillColor {
    switch (this) {
      case ButtonType.signIn:
        return AppColors.primary;
      case ButtonType.signOut:
        return AppColors.lightGreen;
    }
  }

  Color get textColor {
    switch (this) {
      case ButtonType.signIn:
        return AppColors.white;
      case ButtonType.signOut:
        return AppColors.primary;
    }
  }
}

class AccountButton extends StatelessWidget {
  final ButtonType buttonType;
  final VoidCallback onTap;

  const AccountButton(
      {super.key, required this.buttonType, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Padding(
      padding: EdgeInsets.only(top: height * 0.03),
      child: Button(
        onTap: onTap,
        fillColor: buttonType.fillColor,
        border: false,
        shadow: true,
        shadowOpacity: 0.35,
        padding: EdgeInsets.all(height * 0.005),
        child: Text(
          buttonType.text,
          style: AppTextStyles.body
              .copyWith(fontSize: height * 0.02, color: buttonType.textColor),
        ),
      ),
    );
  }
}
