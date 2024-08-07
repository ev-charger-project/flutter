import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/route/domain/providers/route_marker_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../shared/domain/providers/location/user_location_provider.dart';
import '../../../../shared/domain/providers/permission/permission_provider.dart';
import '../../../mapview/domain/providers/is_info_visible_provider.dart';
import '../../../notification/permission/screens/permission_screen.dart';
import '../../domain/providers/data/route_provider.dart';
import '../widgets/info_window.dart';
import '../widgets/location_box.dart';
import '../widgets/start_button.dart';

@RoutePage()
class RouteScreen extends ConsumerStatefulWidget {
  const RouteScreen({Key? key}) : super(key: key);

  @override
  _RouteScreenState createState() => _RouteScreenState();
}

class _RouteScreenState extends ConsumerState<RouteScreen> {
  final List<Marker> _markers = <Marker>[];
  final Completer<GoogleMapController> _controller = Completer();
  final Set<Polyline> _polylines = {};

  Future<void> _checkLocationPermission() async {
    final permissionState = ref.read(permissionProvider);

    if (!permissionState.hasPermission) {
      await showDialog(
        context: context,
        builder: (context) => const PermissionScreen(),
      );
      ref.read(permissionProvider.notifier).reCheckPermission();
    }
    await _moveToCurrentLocation();
  }

  Future<void> _moveToCurrentLocation() async {
    await ref.read(userLocationProvider.notifier).getUserLocation();
    final currentLocation = ref.read(userLocationProvider);
    if (currentLocation != null) {
      LatLng targetLocation =
          LatLng(currentLocation.latitude, currentLocation.longitude);
      CameraPosition cameraPosition = CameraPosition(
        target: targetLocation,
        zoom: 16,
      );
      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    }
  }

  @override
  Widget build(BuildContext context) {
    final routeAsyncValue = ref.watch(routeProvider);
    var userLocation;
    final markerAsyncValue = ref.watch(routeMarkerProvider);

    markerAsyncValue.when(
      data: (markers) {
        setState(() {
          _markers.clear();
          _markers.addAll(markers);
          userLocation = markers.first.position;
        });
      },
      loading: () {},
      error: (error, stack) => print('Error: $error'),
    );

    routeAsyncValue.when(
      data: (route) {
        setState(() {
          _polylines.clear();
          final polylinePoints = route.route
              .map((point) => LatLng(point.lat, point.long))
              .toList();
          _polylines.add(
            Polyline(
              polylineId: const PolylineId('route'),
              color: Theme.of(context).primaryColor,
              points: polylinePoints,
              width: 5,
            ),
          );
        });
      },
      loading: () {},
      error: (error, stack) => print('Error: $error'),
    );

    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(userLocation!.latitude, userLocation.longitude),
              zoom: 12,
            ),
            fortyFiveDegreeImageryEnabled: false,
            indoorViewEnabled: false,
            compassEnabled: false,
            tiltGesturesEnabled: false,
            buildingsEnabled: false,
            mapToolbarEnabled: false,
            zoomControlsEnabled: false,
            minMaxZoomPreference: const MinMaxZoomPreference(8, 17),
            markers: Set<Marker>.of(_markers),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            polylines: _polylines,
          ),
          const LocationAppBar(),
          const StartButton(),
          const DistanceTime(),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            bottom: 96.0,
            right: 16.0,
            child: FloatingActionButton(
              shape: const CircleBorder(),
              onPressed: () async {
                ref.read(isInfoVisibleProvider.notifier).state = false;
                await _checkLocationPermission();
              },
              child: SizedBox(
                height: 30,
                child:
                    SvgPicture.asset('assets/icons/floating_button_icon.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
