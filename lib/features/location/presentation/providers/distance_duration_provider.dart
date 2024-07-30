import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/domain/providers/charger/charger_provider.dart';
import '../../../../shared/domain/providers/location/user_location_provider.dart';

final distanceAndDurationProvider = FutureProvider.autoDispose<List<String>>((ref) async {
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
    final distance = calculateHaversineDistance(
      userLocation.latitude,
      userLocation.longitude,
      location.latitude,
      location.longitude,
    );
    final duration = calculateEstimatedDuration(distance);
    return ['${distance.toStringAsFixed(2)} km', duration];
  } catch (e) {
    return ['X km', 'X mins'];
  }
});

double calculateHaversineDistance(double lat1, double lon1, double lat2, double lon2) {
  const R = 6371;
  final dLat = _degreesToRadians(lat2 - lat1);
  final dLon = _degreesToRadians(lon2 - lon1);
  final a = sin(dLat / 2) * sin(dLat / 2) +
      cos(_degreesToRadians(lat1)) * cos(_degreesToRadians(lat2)) *
          sin(dLon / 2) * sin(dLon / 2);
  final c = 2 * atan2(sqrt(a), sqrt(1 - a));
  return R * c;
}

double _degreesToRadians(double degrees) {
  return degrees * pi / 180;
}

String calculateEstimatedDuration(double distance) {
  const averageWalkingSpeedKmPerH = 25;
  final durationInHours = distance / averageWalkingSpeedKmPerH;
  final durationInMinutes = (durationInHours * 60).round();
  return '$durationInMinutes mins';
}
