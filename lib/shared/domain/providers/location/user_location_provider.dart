import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

import '../permission/permission_provider.dart';

final userLocationProvider =
    StateNotifierProvider<UserLocationNotifier, Position?>((ref) {
  return UserLocationNotifier(ref);
});

class UserLocationNotifier extends StateNotifier<Position?> {
  final Ref ref;

  UserLocationNotifier(this.ref) : super(null) {
    _init();
  }

  void _init() {
    // Listen to permission changes
    ref.listen<PermissionState>(permissionProvider, (previous, next) {
      if (next.hasPermission) {
        getUserLocation();
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
      await getUserLocation();
    } else {
      state = null;
    }
  }

  Future<void> getUserLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      state = position;
    } catch (e) {
      state = null;
    }
  }
}
