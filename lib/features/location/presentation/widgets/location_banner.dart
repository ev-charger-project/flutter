import 'package:flutter/cupertino.dart';

class locationBanner extends StatelessWidget {
  const locationBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275,
      width: double.infinity,
      child: Image.asset(
        'assets/images/location_image.png',
        fit: BoxFit.cover,
      ),
    );
  }
}