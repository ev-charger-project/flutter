import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../widgets/charge_type_object.dart';

final availablePlugsProvider = Provider<List<ChargeTypeObject>>((ref) {
  return [
    ChargeTypeObject(
      chargeType: "CCS1",
      chargePowerType: "AC",
      isChecked: false,
    ),
    ChargeTypeObject(
      chargeType: "CCS1",
      chargePowerType: "DC",
      isChecked: false,
    ),
    ChargeTypeObject(
      chargeType: "CCS2",
      chargePowerType: "AC",
      isChecked: false,
    ),
    ChargeTypeObject(
      chargeType: "CCS2",
      chargePowerType: "DC",
      isChecked: false,
    ),
    ChargeTypeObject(
      chargeType: "CCS3",
      chargePowerType: "AC",
      isChecked: false,
    ),
    ChargeTypeObject(
      chargeType: "CCS3",
      chargePowerType: "DC",
      isChecked: false,
    ),
  ];
});
