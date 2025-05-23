import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class backButton extends StatelessWidget {
  const backButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceTint,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: SvgPicture.asset('assets/icons/back_arrow_icon.svg'),
        iconSize: 50,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
