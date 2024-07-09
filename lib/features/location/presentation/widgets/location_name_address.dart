import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationNameAddress extends StatelessWidget {
  const LocationNameAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 70),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vincom Plaze Gò Vấp',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '1242 Trần Hưng Đạo, P.Mỹ Bình, Thành phố Long Xuyên, quan cu chi, vvvvvvvvvvvv',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                height: 1.5,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SvgPicture.asset('assets/icons/location_icon.svg'),
                SizedBox(width: 5),
                Text(
                  '1.9 km',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 20),
                SvgPicture.asset('assets/icons/car_icon.svg'),
                SizedBox(width: 5),
                Text(
                  '1.9 km',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
