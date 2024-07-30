import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../../shared/domain/providers/location/user_location_provider.dart';

final polypointsProvider =
    FutureProvider.autoDispose<List<LatLng>>((ref) async {
  final PolylinePoints polylinePoints = PolylinePoints();
  final List<LatLng> polylineCoordinates;
  // final currentLocation = ref.watch(locationProvider);
  final currentLocation = LatLng(10.762622, 106.560172);
  final userLocation = ref.watch(userLocationProvider);
  // final userLocation = LatLng(10.762622, 106.660172);
  final PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
    googleApiKey: 'AIzaSyAGYJacplt2I8syt0aY4GXfSNXhKdsXUgM',
    request: PolylineRequest(
        origin: PointLatLng(userLocation!.latitude, userLocation.longitude),
        destination:
            PointLatLng(currentLocation.latitude, currentLocation.longitude),
        mode: TravelMode.driving),
  );

  if (result.points.isNotEmpty) {
    polylineCoordinates = result.points
        .map((PointLatLng point) => LatLng(point.latitude, point.longitude))
        .toList();
  } else {
    polylineCoordinates = [];
  }

  return polylineCoordinates;
});
