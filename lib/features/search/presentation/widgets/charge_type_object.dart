import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../providers/charge_type/checked_plugs_provider.dart';

class ChargeTypeObject extends ConsumerStatefulWidget {
  final String chargeType;
  final String chargePowerType;
  bool isChecked;
  final StateNotifierProvider<CheckedPlugsNotifier, int> checkedPlugsProvider;

  ChargeTypeObject({
    super.key,
    required this.chargeType,
    required this.chargePowerType,
    required this.isChecked,
    required this.checkedPlugsProvider,
  });

  ChargeTypeObject copyWith(
      {String? chargeType, String? chargePowerType, bool? isChecked}) {
    return ChargeTypeObject(
      chargeType: chargeType ?? this.chargeType,
      chargePowerType: chargePowerType ?? this.chargePowerType,
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
            SvgPicture.asset(
              'assets/icons/charger_icon.svg',
            ),
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
