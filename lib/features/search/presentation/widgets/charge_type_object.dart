import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart' as p;
import 'package:ev_charger/shared/core/constant/constants.dart' as constants;

import '../providers/charge_type/checked_plugs_provider.dart';

class ChargeTypeObject extends ConsumerStatefulWidget {
  final String chargeType;
  final String chargePowerType;
  final String chargeImgPath;
  bool isChecked;
  final StateNotifierProvider<CheckedPlugsNotifier, int> checkedPlugsProvider;

  ChargeTypeObject({
    super.key,
    required this.chargeType,
    required this.chargePowerType,
    required this.chargeImgPath,
    required this.isChecked,
    required this.checkedPlugsProvider,
  });

  ChargeTypeObject copyWith(
      {String? chargeType,
      String? chargePowerType,
      bool? isChecked,
      String? chargeImgPath}) {
    return ChargeTypeObject(
      chargeType: chargeType ?? this.chargeType,
      chargePowerType: chargePowerType ?? this.chargePowerType,
      chargeImgPath: chargeImgPath ?? this.chargeImgPath,
      isChecked: isChecked ?? this.isChecked,
      checkedPlugsProvider: checkedPlugsProvider,
    );
  }

  @override
  _ChargeTypeObjectState createState() => _ChargeTypeObjectState();
}

class _ChargeTypeObjectState extends ConsumerState<ChargeTypeObject> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            widget.chargeImgPath.isNotEmpty
                ? (p.extension(widget.chargeImgPath) == ".svg"
                    ? SvgPicture.network(
                        '${constants.uri}${constants.mediaUrl}/${widget.chargeImgPath}',
                        width: 24,
                        height: 24)
                    : Image.network(
                        '${constants.uri}${constants.mediaUrl}/${widget.chargeImgPath}',
                        width: 24,
                        height: 24))
                : SvgPicture.asset('assets/icons/charger_icon.svg',
                    width: 24, height: 24),
            SizedBox(width: screenSize.width * 0.02),
            Text(
              "${widget.chargeType} • ${widget.chargePowerType}",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          side: BorderSide(
            width: 2,
            style: BorderStyle.solid,
            color: Theme.of(context).primaryColor,
          ),
          activeColor: Theme.of(context).primaryColor,
          checkColor: Theme.of(context).colorScheme.secondary,
          value: widget.isChecked,
          onChanged: (bool? value) {
            setState(() {
              widget.isChecked = value!;
            });
            ref.read(checkedPlugsProvider.notifier).updateCheckedPlugs();
          },
        ),
      ],
    );
  }
}
