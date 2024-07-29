import 'package:ev_charger/features/search/presentation/widgets/charge_type_object.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final hiddenPlugsProvider = StateProvider<List<ChargeTypeObject>>((ref) {
  return [];
});
