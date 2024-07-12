import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final markerIconProvider = FutureProvider<BitmapDescriptor>((ref) async {
  final ImageConfiguration imageConfiguration = ImageConfiguration(size: Size(30, 30));
  BitmapDescriptor customIcon = await BitmapDescriptor.asset(
    imageConfiguration,
    'assets/icons/custom_marker.png',
  );

  return customIcon;
});
