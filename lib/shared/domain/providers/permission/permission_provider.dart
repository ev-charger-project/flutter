import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

class PermissionProvider extends StateNotifier<PermissionState> {
  PermissionProvider() : super(PermissionState.initial());

  Future<void> checkAndRequestPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.deniedForever) {
        await Geolocator.openAppSettings();
      }
    }

    _updatePermissionState(permission);
  }

  Future<void> reCheckPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    _updatePermissionState(permission);
  }

  Future<bool> openSettings() async {
    return await Geolocator.openAppSettings();
  }

  void _updatePermissionState(LocationPermission permission) {
    switch (permission) {
      case LocationPermission.denied:
      case LocationPermission.unableToDetermine:
      case LocationPermission.deniedForever:
        state = state.copyWith(hasPermission: false);
        break;
      case LocationPermission.whileInUse:
      case LocationPermission.always:
        state = state.copyWith(hasPermission: true);
        break;
    }
  }
}

class PermissionState {
  final bool hasPermission;

  PermissionState({required this.hasPermission});

  factory PermissionState.initial() => PermissionState(hasPermission: false);

  PermissionState copyWith({bool? hasPermission}) {
    return PermissionState(
      hasPermission: hasPermission ?? this.hasPermission,
    );
  }
}

final permissionProvider =
    StateNotifierProvider<PermissionProvider, PermissionState>((ref) {
  return PermissionProvider();
});
