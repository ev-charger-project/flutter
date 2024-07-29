import 'package:ev_charger/shared/presentation/theme/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/core/localization/localization.dart';

class PermissionContent extends StatelessWidget {
  const PermissionContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Column(
      children: [
        SizedBox(
          height: height * 0.01,
        ),
        SvgPicture.asset(
          'assets/icons/notification_location_icon.svg',
          height: height * 0.12,
          width: height * 0.12,
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Text(
        AppLocalizations.of(context).translate('Enable Location'),
          style: AppTextStyles.b3.copyWith(fontSize: height * 0.02),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Text(
          textAlign: TextAlign.center,
    AppLocalizations.of(context).translate('We need access to your location to find EV Charging stations around you.'),
          style: AppTextStyles.bodyXs.copyWith(fontSize: height * 0.013),
        ),
      ],
    );
  }
}
