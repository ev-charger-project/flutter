import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

class PermissionProvider extends StateNotifier<PermissionState> {
  PermissionProvider() : super(PermissionState.initial());

  Future<void> checkAndRequestPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();


    if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
    }

    _updatePermissionState(permission);
  }

  Future<void> reCheckPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    _updatePermissionState(permission);
  }

  Future<void> openSettings() async {
    await Geolocator.openLocationSettings();
    checkAndRequestPermission();
  }

  void _updatePermissionState(LocationPermission permission) {
    switch (permission) {
      case LocationPermission.denied:
      case LocationPermission.unableToDetermine:
        state = state.copyWith(hasPermission: false, deniedForever: false);
        break;
      case LocationPermission.deniedForever:
        state = state.copyWith(hasPermission: false, deniedForever: true);
        break;
      case LocationPermission.whileInUse:
        state = state.copyWith(hasPermission: true, deniedForever: false);
        break;
      case LocationPermission.always:
        state = state.copyWith(hasPermission: true, deniedForever: false);
        break;
    }
  }


}

class PermissionState {
  final bool hasPermission;
  final bool deniedForever;

  PermissionState({required this.hasPermission, required this.deniedForever});

  factory PermissionState.initial() => PermissionState(hasPermission: false, deniedForever: false);

  PermissionState copyWith({bool? hasPermission, bool? deniedForever}) {
    return PermissionState(
      hasPermission: hasPermission ?? this.hasPermission,
      deniedForever: deniedForever ?? this.deniedForever,
    );
  }
}

final permissionProvider = StateNotifierProvider<PermissionProvider, PermissionState>((ref) {
  return PermissionProvider();
});
