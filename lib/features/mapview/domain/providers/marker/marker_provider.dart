import 'dart:math' as math;
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../../shared/domain/providers/location/user_location_provider.dart';
import '../../../../location/presentation/providers/selected_location_id_provider.dart';
import '../is_info_visible_provider.dart';
import '../screen_center_provider.dart';
import 'marker_repository_provider.dart';
import 'dart:ui' as ui;

class BitmapDescriptorHelper {
  static final Map<String, BitmapDescriptor> _cache = {};


  static Future<BitmapDescriptor> getBitmapDescriptorFromPngAsset(
      String assetName,
      int width,
      ) async {
    final cacheKey = '${assetName}_$width';
    if (_cache.containsKey(cacheKey)) {
      return _cache[cacheKey]!;
    }

    ByteData data = await rootBundle.load(assetName);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    final bytes = (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();

    final bitmapDescriptor = BitmapDescriptor.bytes(bytes);
    _cache[cacheKey] = bitmapDescriptor;
    return bitmapDescriptor;
  }
}


final markerProvider = FutureProvider.autoDispose<List<Marker>>((ref) async {
  final userLatLng = ref.watch(screenCenterProvider);
  final userLat = userLatLng.latitude;
  final userLong = userLatLng.longitude;
  final markerRepository = ref.read(markerRepositoryProvider);
  final markersData =
      await markerRepository.fetchMarkers(userLat, userLong, 15);
  final BitmapDescriptor stationIconPng =
      await BitmapDescriptorHelper.getBitmapDescriptorFromPngAsset(
          'assets/icons/4xStation_icon.png', 36);
  final BitmapDescriptor userIcon =
      await BitmapDescriptorHelper.getBitmapDescriptorFromPngAsset(
          'assets/icons/user_icon.png', 100);

  List<Marker> markers = [];

  for (var markerData in markersData) {
    markers.add(
      Marker(
        markerId: MarkerId(markerData.id),
        position: LatLng(markerData.latitude, markerData.longitude),
        icon: stationIconPng,
        onTap: () {
          ref.read(selectedLocationIdProvider.notifier).state = markerData.id;
          ref.read(isInfoVisibleProvider.notifier).state = true;
        },
      ),
    );
  }

  final currentLocation = ref.watch(userLocationProvider);
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
