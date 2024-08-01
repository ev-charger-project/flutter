import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
    this.prefixIcon, // Thêm prefixIcon
  });

  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final IconData? prefixIcon; // Thêm prefixIcon

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: TextField(
        key: key,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon != null
              ? Icon(prefixIcon, color: Colors.black) // Hiển thị prefixIcon nếu có
              : null,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(0.0),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(0.0),
            ),
          ),
        ),
      ),
    );
  }
}
