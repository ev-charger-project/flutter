import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'hidden_plugs_provider.dart';
import 'visible_plugs_provider.dart';

class CheckedPlugsNotifier extends StateNotifier<int> {
  CheckedPlugsNotifier(this.ref) : super(0);
  final Ref ref;

  void updateCheckedPlugs() {
    final visiblePlugs = ref.read(visiblePlugsProvider);
    final hiddenPlugs = ref.read(hiddenPlugsProvider);
    state = visiblePlugs.where((plug) => plug.isChecked).length +
        hiddenPlugs.where((plug) => plug.isChecked).length;
  }
}

final checkedPlugsProvider = StateNotifierProvider<CheckedPlugsNotifier, int>(
    (ref) => CheckedPlugsNotifier(ref));
