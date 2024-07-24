import 'package:flutter/cupertino.dart';

class LocationBanner extends StatelessWidget {
  const LocationBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 275,
      width: double.infinity,
      child: Image.asset(
        'assets/images/location_banner.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
