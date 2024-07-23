import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_converter/flutter_image_converter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../location/presentation/providers/selected_location_id_provider.dart';
import '../is_info_visible_provider.dart';
import '../screen_center_provider.dart';
import 'marker_repository_provider.dart';

import 'dart:ui' as ui;

Future<Uint8List> getBytesFromAsset(int width) async {
  ByteData data = await rootBundle.load('assets/images/station_marker.png');
  ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
  ui.FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
}

Future<BitmapDescriptor> getCustomMarkerIcon(int width) async {
  final Uint8List markerIcon = await getBytesFromAsset(width);
  return BitmapDescriptor.bytes(markerIcon);
}

final markerProvider = FutureProvider.autoDispose<List<Marker>>((ref) async {
  final userLatLng =ref.watch(screenCenterProvider);
  final userLat = userLatLng.latitude;
  final userLong = userLatLng.longitude;
  final markerRepository = ref.read(markerRepositoryProvider);
  final markersData = await markerRepository.fetchMarkers(userLat, userLong, 20);
  final BitmapDescriptor stationIcon = await getCustomMarkerIcon(45);

  List<Marker> markers = [];

  for (var markerData in markersData) {
    markers.add(
      Marker(
        markerId: MarkerId(markerData.id),
        position: LatLng(markerData.latitude, markerData.longitude),
        icon: stationIcon,
        onTap: () {
          ref.read(selectedLocationIdProvider.notifier).state = markerData.id;
          ref.read(isInfoVisibleProvider.notifier).state = true;
        },
      ),
    );
  }

  return markers;
});
