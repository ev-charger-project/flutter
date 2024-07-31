import 'package:ev_charger/features/route/presentation/providers/start_provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../mapview/domain/providers/marker/marker_provider.dart';
import '../../presentation/providers/end_provider.dart';

final routeProvider = FutureProvider.autoDispose<List<Marker>>((ref) async {
  final BitmapDescriptor userIcon =
      await BitmapDescriptorHelper.getBitmapDescriptorFromSvgAsset(
          'assets/icons/user_icon.svg', 35);

  List<Marker> markers = [];
  final userCurrentLocation = ref.watch(startProvider);
  final currentLocation = ref.watch(endProvider);

  markers.add(
    Marker(
      markerId: const MarkerId('userCurrentLocation'),
      position:
          LatLng(userCurrentLocation.latitude, userCurrentLocation.longitude),
      icon: userIcon,
      anchor: const Offset(0.5, 0.5),
    ),
  );

  markers.add(Marker(
    markerId: const MarkerId('currentLocation'),
    position: LatLng(currentLocation.latitude, currentLocation.longitude),
    icon: userIcon,
    anchor: const Offset(0.5, 0.5),
  ));

  return markers;
});
