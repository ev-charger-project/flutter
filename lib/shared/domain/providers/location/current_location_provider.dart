import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

import '../permission/permission_provider.dart';

final currentLocationProvider = StateNotifierProvider<CurrentLocationNotifier, Position?>((ref) {
  return CurrentLocationNotifier(ref);
});

class CurrentLocationNotifier extends StateNotifier<Position?> {
  final Ref ref;

  CurrentLocationNotifier(this.ref) : super(null) {
    _init();
  }

  void _init() {
    // Listen to permission changes
    ref.listen<PermissionState>(permissionProvider, (previous, next) {
      if (next.hasPermission) {
        getCurrentLocation();
      } else {
        state = null;
      }
    });

    // Check permission initially
    _checkPermissionAndFetchLocation();
  }

  Future<void> _checkPermissionAndFetchLocation() async {
    final permissionState = ref.read(permissionProvider);

    if (permissionState.hasPermission) {
      await getCurrentLocation();
    } else {
      state = null;
    }
  }

  Future<void> getCurrentLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      state = position;
    } catch (e) {
      state = null;
    }
  }
}
