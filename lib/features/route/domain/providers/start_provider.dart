import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../repositories/marker/entities/charger_marker_entity.dart';


class StartProvider extends StateNotifier<ChargerMarkerEntity> {
  StartProvider() : super(const ChargerMarkerEntity(id: '1', latitude: 0, longitude: 0));
  void updateStartLocation(ChargerMarkerEntity newLocation) {
    state = newLocation;
  }
}

final startProvider = StateNotifierProvider<StartProvider, ChargerMarkerEntity>((ref) {
  return StartProvider();
});
