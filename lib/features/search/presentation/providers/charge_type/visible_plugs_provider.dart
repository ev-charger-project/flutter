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
            isChecked: plug.isChecked,
          ))
      .toList();
});

// This StateProvider depends on visiblePlugsInitializerProvider for its initial state
final visiblePlugsProvider = StateProvider<List<ChargeTypeObject>>((ref) {
  List<ChargeTypeObject> visiblePlugs = [];
  ref.watch(visiblePlugsInitializerProvider).whenData((value) {
    visiblePlugs = value;
  });
  return visiblePlugs;
});
