import 'package:ev_charger/features/route/domain/providers/end_provider.dart';
import 'package:ev_charger/features/route/domain/providers/start_provider.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final polypointsProvider =
FutureProvider.autoDispose<List<LatLng>>((ref) async {
  final PolylinePoints polylinePoints = PolylinePoints();
  final List<LatLng> polylineCoordinates;

  final userLocation = ref.watch(startProvider);
  final currentLocation = ref.watch(endProvider);


  final PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
    googleApiKey: 'AIzaSyAGYJacplt2I8syt0aY4GXfSNXhKdsXUgM',
    request: PolylineRequest(
        origin: PointLatLng(userLocation.latitude, userLocation.longitude),
        destination: PointLatLng(currentLocation!.latitude, currentLocation.longitude),
        mode: TravelMode.driving),
  );

  if (result.points.isNotEmpty) {
    polylineCoordinates = result.points
        .map((PointLatLng point) => LatLng(point.latitude, point.longitude))
        .toList();
  } else {
    polylineCoordinates = [];
  }
  // polylineCoordinates= [LatLng(userLocation!.latitude, userLocation.longitude),LatLng(currentLocation.latitude, currentLocation.longitude)];


  return polylineCoordinates;
});
