import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_converter/flutter_image_converter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../location/presentation/providers/selected_location_id_provider.dart';
import '../is_info_visible_provider.dart';
import '../radius_provider.dart';
import '../screen_center_provider.dart';
import 'marker_repository_provider.dart';

final markerProvider = FutureProvider.autoDispose<List<Marker>>((ref) async {
  final userLatLng =ref.watch(screenCenterProvider);
  final userLat = userLatLng.latitude;
  final userLong = userLatLng.longitude;
  final markerRepository = ref.read(markerRepositoryProvider);
  final markersData = await markerRepository.fetchMarkers(userLat, userLong, 50);
  final Uint8List customIconBytes = await const AssetImage('assets/icons/marker_icon.png').pngUint8List;

  List<Marker> markers = [];

  for (var markerData in markersData) {
    markers.add(
      Marker(
        markerId: MarkerId(markerData.id),
        position: LatLng(markerData.latitude, markerData.longitude),
        icon: BitmapDescriptor.bytes(customIconBytes),
        onTap: () {
          ref.read(selectedLocationIdProvider.notifier).state = markerData.id;
          ref.read(isInfoVisibleProvider.notifier).state = true;
        },
      ),
    );
  }

  return markers;
});
