import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class backButton extends StatelessWidget {
  const backButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        color: Color(0x80c8c8c8),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Image.asset('assets/icons/back_arrow_icon.png'),
        iconSize: 50,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}