import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'marker_repository_provider.dart';
import 'marker_icon_provider.dart';

final markerProvider = FutureProvider.family.autoDispose<List<Marker>, int>((ref, radius) async {
  final markerRepository = ref.read(markerRepositoryProvider);
  final markersData = await markerRepository.fetchMarkers(radius);
  final customIcon = await ref.read(markerIconProvider.future);

  List<Marker> markers = [];

  for (var markerData in markersData) {
    markers.add(
      Marker(
        markerId: MarkerId(markerData.id),
        position: LatLng(double.parse(markerData.latitude), double.parse(markerData.longitude)),
        icon: customIcon,
        infoWindow: InfoWindow(
          title: 'Charger ${markerData.id}',
          snippet: 'Latitude: ${markerData.latitude}, Longitude: ${markerData.longitude}',
        ),
      ),
    );
  }

  return markers;
});
