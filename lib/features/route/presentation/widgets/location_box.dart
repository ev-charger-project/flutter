import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../location/presentation/widgets/back_button.dart';


class LocationAppBar extends StatelessWidget {
  const LocationAppBar({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width * 0.02,
              right: screenSize.width * 0.1,
              bottom: screenSize.height * 0.01),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const backButton(),
              SizedBox(
                width: screenSize.width * 0.02,
              ),
              Expanded(
                child: Column(
                  children: [
                    LocationBox(context: context, hintText: 'Sonatus Building, 15 D. L Tôn, Bến Nghé, Quận 1'),
                    const SizedBox(height: 10),
                    LocationBox(context: context, hintText: 'Hoa Hao Clinic, 254 Hòa Hảo, Phường 15, Quận 10'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class LocationBox extends StatelessWidget {
  const LocationBox({
    super.key,
    required this.context,
    required this.hintText,
  });

  final BuildContext context;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              width: 1, color: Theme.of(context).colorScheme.secondary)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              hintText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
