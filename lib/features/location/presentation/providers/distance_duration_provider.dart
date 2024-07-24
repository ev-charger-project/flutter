import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ev_charger/shared/data/data_source/remote/postgresql/agest_storage_service.dart';

import '../../../../shared/domain/providers/charger/charger_provider.dart';
import '../../../../shared/domain/providers/location/user_location_provider.dart';

final distanceAndDurationProvider =
    FutureProvider.autoDispose<List<String>>((ref) async {
  final userLocation = ref.watch(userLocationProvider);
  final locationAsyncValue = ref.watch(locationProvider);

  final location = locationAsyncValue.when(
    data: (data) => data,
    loading: () => null,
    error: (error, stack) => null,
  );

  if (userLocation == null || location == null) {
    return ['N/A', 'N/A'];
  }

  try {
    final storageService = AgestStorageService();
    final results = await storageService.fetchDistanceAndDuration(
      userLocation.latitude,
      userLocation.longitude,
      location.latitude,
      location.longitude,
    );
    return results;
  } catch (e) {
    return ['X km', 'X mins'];
  }
});
