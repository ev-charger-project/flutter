import 'package:flutter/material.dart';
import 'package:ev_charger/shared/presentation/theme/app_colors.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
    this.prefixIcon,
    this.regex = '',
    this.errorMessage = 'Please enter a valid value',
  });

  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final IconData? prefixIcon;
  final String regex;
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon:
              prefixIcon != null ? Icon(prefixIcon, color: AppColors.primary) : null,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.primary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.primary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $hintText';
          }
          if (regex.isNotEmpty && !RegExp(regex).hasMatch(value)) {
            return errorMessage;
          }
          return null;
        },
      ),
    );
  }
}
