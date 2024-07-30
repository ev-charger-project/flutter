import 'package:ev_charger/features/search/presentation/widgets/charge_type_object.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final hiddenPlugsInitializerProvider =
    FutureProvider<List<ChargeTypeObject>>((ref) async {
  // Fetch or initialize the list of hidden plugs
  return <ChargeTypeObject>[];
});

final hiddenPlugsProvider = StateProvider<List<ChargeTypeObject>>((ref) {
  List<ChargeTypeObject> hiddenPlugs = [];
  ref.watch(hiddenPlugsInitializerProvider).whenData((value) {
    hiddenPlugs = value;
  });
  return hiddenPlugs;
});
