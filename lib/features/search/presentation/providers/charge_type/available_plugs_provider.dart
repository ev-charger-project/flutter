import 'package:ev_charger/features/search/domain/providers/charge_type_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../widgets/charge_type_object.dart';
import 'checked_plugs_provider.dart';

final availablePlugsProvider =
    FutureProvider<List<ChargeTypeObject>>((ref) async {
  final chargeTypeList = await ref.watch(chargeTypeProvider.future);
  return chargeTypeList
      .map((i) => ChargeTypeObject(
            chargeType: i.plug_type,
            chargePowerType: i.power_model,
            chargeImgPath: i.plug_image_url,
            isChecked: true,
            checkedPlugsProvider: checkedPlugsProvider,
          ))
      .toList();
});
