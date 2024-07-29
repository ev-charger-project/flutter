import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../../shared/domain/providers/location/user_location_provider.dart';
import '../../../mapview/domain/providers/marker/marker_provider.dart';

final routeProvider = FutureProvider.autoDispose<List<Marker>>((ref) async {


  final BitmapDescriptor stationIcon =
  await BitmapDescriptorHelper.getBitmapDescriptorFromSvgAsset(
      'assets/icons/station_marker.svg', 15);
  final BitmapDescriptor userIcon =
  await BitmapDescriptorHelper.getBitmapDescriptorFromSvgAsset(
      'assets/icons/user_icon.svg', 35);


  List<Marker> markers = [];
  final userCurrentLocation = ref.watch(userLocationProvider);
  if (userCurrentLocation != null) {
    markers.add(
      Marker(
        markerId: const MarkerId('userCurrentLocation'),
        position: LatLng(userCurrentLocation.latitude, userCurrentLocation.longitude),
        icon: userIcon,
        anchor: const Offset(0.5, 0.5),
      ),
    );
  }

  final currentLocation = LatLng(10.562622, 106.460172);;
  if (currentLocation != null) {
    markers.add(
      Marker(
        markerId: const MarkerId('currentLocation'),
        position: LatLng(currentLocation.latitude, currentLocation.longitude),
        icon: userIcon,
        anchor: const Offset(0.5, 0.5),
      ),
    );
  }

  return markers;
});
