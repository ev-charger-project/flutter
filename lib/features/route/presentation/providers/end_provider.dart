import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../repositories/marker/entities/charger_marker_entity.dart';


class EndProvider extends StateNotifier<ChargerMarkerEntity> {
  EndProvider() : super(const ChargerMarkerEntity(id: '1', latitude: 0, longitude: 0));

  void updateEndLocation(ChargerMarkerEntity newLocation) {
    state = newLocation;
  }
}

final endProvider = StateNotifierProvider<EndProvider, ChargerMarkerEntity>((ref) {
  return EndProvider();
});
