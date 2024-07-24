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

  static Future<BitmapDescriptor> getBitmapDescriptorFromSvgAsset(
      String assetName,
      double iconSize,
      ) async {
    final cacheKey = '${assetName}_$iconSize';
    if (_cache.containsKey(cacheKey)) {
      return _cache[cacheKey]!;
    }

    final pictureInfo = await vg.loadPicture(SvgAssetLoader(assetName), null);
    final Size size = Size(iconSize, iconSize);
    double devicePixelRatio = ui.window.devicePixelRatio;
    int width = (size.width * devicePixelRatio).toInt();
    int height = (size.height * devicePixelRatio).toInt();

    final scaleFactor = math.min(
      width / pictureInfo.size.width,
      height / pictureInfo.size.height,
    );

    final recorder = ui.PictureRecorder();

    ui.Canvas(recorder)
      ..scale(scaleFactor)
      ..drawPicture(pictureInfo.picture);

    final rasterPicture = recorder.endRecording();

    final image = rasterPicture.toImageSync(width, height);
    final bytes = (await image.toByteData(format: ui.ImageByteFormat.png))!;

    final bitmapDescriptor = BitmapDescriptor.bytes(bytes.buffer.asUint8List());
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

  final BitmapDescriptor stationIcon =
  await BitmapDescriptorHelper.getBitmapDescriptorFromSvgAsset(
      'assets/icons/station_marker.svg', 16);
  final BitmapDescriptor userIcon =
  await BitmapDescriptorHelper.getBitmapDescriptorFromSvgAsset(
      'assets/icons/user_icon.svg', 30);
  final BitmapDescriptor defaultIcon = BitmapDescriptor.defaultMarker;

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
