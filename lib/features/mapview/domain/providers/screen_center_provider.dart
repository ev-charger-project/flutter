import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


final screenCenterProvider = StateProvider<LatLng>((ref) {
  return const LatLng(10.800140, 106.664580);
});
