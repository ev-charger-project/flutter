import 'package:ev_charger/features/search/presentation/providers/charge_type/checked_plugs_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../widgets/charge_type_object.dart';
import 'available_plugs_provider.dart';

// This provider waits for availablePlugsProvider to complete and then initializes the visible plugs list
final visiblePlugsInitializerProvider =
    FutureProvider<List<ChargeTypeObject>>((ref) async {
  final availablePlugs = await ref.watch(availablePlugsProvider.future);
  // Initialize visiblePlugs with the data from availablePlugs
  return availablePlugs
      .map((plug) => ChargeTypeObject(
            chargeType: plug.chargeType,
            chargePowerType: plug.chargePowerType,
            chargeImgPath: plug.chargeImgPath,
            isChecked: false,
            checkedPlugsProvider: checkedPlugsProvider,
          ))
      .toList();
});

// This StateProvider depends on visiblePlugsInitializerProvider for its initial state
final visiblePlugsProvider = StateProvider<List<ChargeTypeObject>>((ref) {
  List<ChargeTypeObject> visiblePlugs = [];
  ref.watch(visiblePlugsInitializerProvider).whenData((value) {
    value.sort((a, b) {
      int chargeTypeComparison = a.chargeType.compareTo(b.chargeType);
      if (chargeTypeComparison != 0) {
        return chargeTypeComparison;
      } else {
        return a.chargePowerType.compareTo(b.chargePowerType);
      }
    });
    visiblePlugs = value;
  });
  return visiblePlugs;
});
