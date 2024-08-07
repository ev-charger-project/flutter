import 'package:ev_charger/features/route/presentation/providers/start_provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../mapview/domain/providers/marker/marker_provider.dart';
import '../../presentation/providers/end_provider.dart';

final routeMarkerProvider =
    FutureProvider.autoDispose<List<Marker>>((ref) async {
  final BitmapDescriptor userIcon =
      await BitmapDescriptorHelper.getBitmapDescriptorFromSvgAsset(
          'assets/icons/user_icon.svg', 35);

  final BitmapDescriptor flagIcon =
      await BitmapDescriptorHelper.getBitmapDescriptorFromSvgAsset(
          'assets/icons/flag_icon.svg', 15);

  List<Marker> markers = [];
  final userCurrentLocation = ref.watch(startProvider);
  final currentLocation = ref.watch(endProvider);

  markers.add(
    Marker(
      markerId: const MarkerId('Start'),
      position:
          LatLng(userCurrentLocation.latitude, userCurrentLocation.longitude),
      icon: userIcon,
      anchor: const Offset(0.5, 0.5),
    ),
  );

  markers.add(Marker(
    markerId: const MarkerId('Destination'),
    position: LatLng(currentLocation.latitude, currentLocation.longitude),
    icon: flagIcon,
    anchor: const Offset(0, 0.8),
  ));

  return markers;
});
