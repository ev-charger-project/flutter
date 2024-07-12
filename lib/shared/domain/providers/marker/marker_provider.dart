import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_converter/flutter_image_converter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'marker_repository_provider.dart';
final markerProvider = FutureProvider.family.autoDispose<List<Marker>, int>((ref, radius) async {
  final markerRepository = ref.read(markerRepositoryProvider);
  final markersData = await markerRepository.fetchMarkers(radius);
  final Uint8List customIconBytes = await const AssetImage('assets/icons/marker_icon.png').pngUint8List;

  List<Marker> markers = [];

  for (var markerData in markersData) {
    markers.add(
      Marker(
        markerId: MarkerId(markerData.id),
        position: LatLng(double.parse(markerData.latitude), double.parse(markerData.longitude)),
        icon: BitmapDescriptor.bytes(customIconBytes),
        infoWindow: InfoWindow(
          title: 'Charger ${markerData.id}',
          snippet: 'Latitude: ${markerData.latitude}, Longitude: ${markerData.longitude}',
        ),
      ),
    );
  }

  return markers;
});
