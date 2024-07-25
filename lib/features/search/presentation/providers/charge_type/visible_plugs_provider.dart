import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/charge_type_object.dart';
import 'available_plugs_provider.dart';

final visiblePlugsProvider = StateProvider<List<ChargeTypeObject>>((ref) {
  bool isInitialized = false;
  List<ChargeTypeObject> visiblePlugs = [];

  if (!isInitialized) {
    List availablePlugs = ref.read(availablePlugsProvider);
    visiblePlugs = List.generate(availablePlugs.length, (index) {
      ChargeTypeObject plug = availablePlugs[index];
      return ChargeTypeObject(
        chargeType: plug.chargeType,
        chargePowerType: plug.chargePowerType,
        isChecked: plug.isChecked,
      );
    });
    isInitialized = true; // Mark as initialized to prevent future updates.
  }

  return visiblePlugs;
});
