import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart' as p;
import 'package:ev_charger/shared/core/constant/constants.dart' as constants;

import '../../../../../repositories/charger/entities/charger_entity.dart';

class PortBox extends StatelessWidget {
  final Port port;

  const PortBox({
    super.key,
    required this.port,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.015),
      child: Container(
        width: screenSize.width * 0.2,
        height: screenSize.height * 0.1,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          border: Border.all(
            color: Theme.of(context).stationGrey,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "${port.power_model.outputValue.floor()}kw ${port.power_plug_type.powerModel}",
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: port.power_plug_type.plugImageUrl != null
                  ? (p.extension(port.power_plug_type.plugImageUrl!) == ".svg"
                      ? SvgPicture.network(
                          "${constants.uri}${constants.mediaUrl}/${port.power_plug_type.plugImageUrl!}",
                          width: 48,
                          height: 48)
                      : Image.network(
                          "${constants.uri}${constants.mediaUrl}/${port.power_plug_type.plugImageUrl!}",
                          width: 48,
                          height: 48))
                  : SvgPicture.asset('assets/icons/plug_icon.svg'),
            ),
            Text(
              port.power_plug_type.plugType,
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

bool isValidUrl(String url) {
  Uri? uri = Uri.tryParse(url);
  return uri != null && (uri.isScheme('http') || uri.isScheme('https'));
}
