import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math' as math;

import 'data/route_provider.dart';

final routeTimeDistanceProvider =
    FutureProvider.autoDispose<Map<String, double>>((ref) async {
  final routeEntity = await ref.watch(routeProvider.future);
  final polylinePoints = routeEntity.route;
  double totalDistance = 0.0;
  double totalTime = 0.0;

  if (polylinePoints.isNotEmpty) {
    for (int i = 0; i < polylinePoints.length - 1; i++) {
      totalDistance += _calculateDistance(
        polylinePoints[i].lat,
        polylinePoints[i].long,
        polylinePoints[i + 1].lat,
        polylinePoints[i + 1].long,
      );
    }

    totalTime = totalDistance / 25.0;
  }

  return {
    'distance': totalDistance,
    'time': totalTime * 60, // time in minutes
  };
});

double _calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  const double earthRadius = 6371;

  final double dLat = _degToRad(lat2 - lat1);
  final double dLon = _degToRad(lon2 - lon1);

  final double a = math.sin(dLat / 2) * math.sin(dLat / 2) +
      math.cos(_degToRad(lat1)) *
          math.cos(_degToRad(lat2)) *
          math.sin(dLon / 2) *
          math.sin(dLon / 2);

  final double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));

  return earthRadius * c;
}

double _degToRad(double deg) {
  return deg * (math.pi / 180);
}
