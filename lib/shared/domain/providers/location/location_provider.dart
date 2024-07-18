import 'package:ev_charger/features/location/presentation/providers/selected_location_id_provider.dart';
import 'package:ev_charger/repositories/location/entities/location_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'location_repository_provider.dart';

final locationProvider =
    FutureProvider.autoDispose<LocationEntity>((ref) async {
  final locationRepository = ref.read(locationRepositoryProvider);
  final currentLocationId = ref.watch(selectedLocationIdProvider);
  return await locationRepository.fetchLocationData(currentLocationId);
});
