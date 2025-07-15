import 'package:ev_charger/shared/presentation/theme/app_colors.dart';
import 'package:ev_charger/shared/presentation/theme/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../shared/presentation/widgets/button.dart';

enum ButtonType {
  logIn,
  cancel,
}

extension ButtonTypeExtension on ButtonType {
  String get text {
    switch (this) {
      case ButtonType.logIn:
        return 'Sign in';
      case ButtonType.cancel:
        return 'Cancel';
    }
  }

  Color get fillColor {
    switch (this) {
      case ButtonType.logIn:
        return AppColors.primary;
      case ButtonType.cancel:
        return AppColors.lightGreen;
    }
  }

  Color get textColor {
    switch (this) {
      case ButtonType.logIn:
        return AppColors.white;
      case ButtonType.cancel:
        return AppColors.primary;
    }
  }
}

class AuthenticationButton extends StatelessWidget {
  final ButtonType buttonType;
  final VoidCallback onTap;

  const AuthenticationButton(
      {super.key, required this.buttonType, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Button(
      onTap: onTap,
      fillColor: buttonType.fillColor,
      border: false,
      shadow: true,
      shadowOpacity: 0.35,
      padding: EdgeInsets.all(height * 0.01),
      child: Text(
        buttonType.text,
        style: AppTextStyles.body
            .copyWith(fontSize: height * 0.02, color: buttonType.textColor),
      ),
    );
  }
}
