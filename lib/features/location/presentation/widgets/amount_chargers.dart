import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChargerNum extends StatelessWidget {
  const ChargerNum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var chargers = 5;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.015),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: List.generate(
              chargers,
                  (index) => Padding(
                padding: const EdgeInsets.all(2.5),
                child: SvgPicture.asset('assets/icons/charger_icon.svg'),
              ),
            ),
          ),
          Text(
            '$chargers chargers',
            style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
