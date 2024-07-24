import 'dart:async';
import 'dart:ui';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/mapview/domain/providers/screen_center_provider.dart';
import 'package:ev_charger/features/mapview/presentation/screens/map_style.dart';
import 'package:ev_charger/shared/domain/providers/openApp/openApp_provider.dart';
import 'package:ev_charger/shared/presentation/widgets/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../routes/app_route.dart';
import '../../../../shared/domain/providers/location/user_location_provider.dart';
import '../../../../shared/domain/providers/permission/permission_provider.dart';
import '../../../notification/screens/permission_screen.dart';
import '../../../search/domain/providers/search_query_provider.dart';
import '../../../search/presentation/widgets/search_bar_and_filter.dart';
import '../../domain/providers/is_info_visible_provider.dart';
import '../../domain/providers/marker/marker_provider.dart';
import '../widgets/short_info_ui.dart';

@RoutePage()
class MapScreen extends ConsumerStatefulWidget {
  final double? latitude;
  final double? longitude;

  const MapScreen({super.key, this.latitude, this.longitude});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen>
    with WidgetsBindingObserver {
  final GlobalKey _shortInfoKey = GlobalKey();

  double getShortInfoHeight() {
    final renderBox =
        _shortInfoKey.currentContext?.findRenderObject() as RenderBox?;
    return renderBox?.size.height ?? 0;
  }

  final String _mapStyleString = simpleMapStyle;

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  GoogleMapController? _mapController;
  final List<Marker> _markers = <Marker>[];
  static const LatLng _fixedLocation = LatLng(10.8023163, 106.6645121);

  late TextEditingController _searchController;

  static CameraPosition _initialCameraPosition(Position? currentLocation,
      {double? latitude, double? longitude}) {
    if (latitude != null && longitude != null) {
      return CameraPosition(
        target: LatLng(latitude, longitude),
        zoom: 18,
      );
    } else {
      return CameraPosition(
        target: currentLocation != null
            ? LatLng(currentLocation.latitude, currentLocation.longitude)
            : _fixedLocation,
        zoom: 16,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();

    WidgetsBinding.instance.addObserver(this);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(permissionProvider.notifier).reCheckPermission();
      final permissionState = ref.read(permissionProvider);
      final openAppState = ref.read(openAppProvider.notifier).state;

      if (!permissionState.hasPermission && openAppState) {
        ref.read(openAppProvider.notifier).state = false;
        showDialog(
          context: context,
          builder: (context) => const PermissionScreen(),
        );
      }
    });
  }

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
      controller
          .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    }
  }

  Future<void> _animateCameraToPosition(LatLng position, {double zoom = 16.0}) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: position,
      zoom: zoom,
    )));
  }

  @override
  Widget build(BuildContext context) {
    final isInfoVisible = ref.watch(isInfoVisibleProvider);
    final markerAsyncValue = ref.watch(markerProvider);
    final currentLocation = ref.watch(userLocationProvider);
    final screenSize = MediaQuery.of(context).size;
    final searchQuery = ref.watch(SearchQueryProvider);

    _searchController.text = searchQuery;

    markerAsyncValue.when(
      data: (markers) {
        setState(() {
          _markers.clear();
          _markers.addAll(markers.map((marker) {
            return marker.copyWith(
              onTapParam: () async {
                setState(() {
                  ref.read(isInfoVisibleProvider.notifier).state = true;
                });
                await _animateCameraToPosition(marker.position, zoom: 18.0);
              },
            );
          }).toList());
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
            style: _mapStyleString,
            initialCameraPosition: _initialCameraPosition(currentLocation,
                latitude: widget.latitude, longitude: widget.longitude),
            markers: Set<Marker>.of(_markers),
            fortyFiveDegreeImageryEnabled: false,
            indoorViewEnabled: false,
            compassEnabled: false,
            tiltGesturesEnabled: false,
            buildingsEnabled: false,
            mapToolbarEnabled: false,
            zoomControlsEnabled: false,
            minMaxZoomPreference: const MinMaxZoomPreference(12, 17),
            onMapCreated: (GoogleMapController controller) {
              if (!_controller.isCompleted) {
                _controller.complete(controller);
                _mapController = controller;
              }
            },
            onCameraIdle: () async {
              final GoogleMapController controller = await _controller.future;
              LatLngBounds visibleRegion = await controller.getVisibleRegion();
              LatLng center = LatLng(
                (visibleRegion.northeast.latitude +
                        visibleRegion.southwest.latitude) /
                    2,
                (visibleRegion.northeast.longitude +
                        visibleRegion.southwest.longitude) /
                    2,
              );
              ref.read(screenCenterProvider.notifier).state = center;
            },
            onTap: (LatLng position) async {
              ref.read(isInfoVisibleProvider.notifier).state = false;
              await _animateCameraToPosition(position, zoom: 16.0);
            },
          ),
          Positioned(
            top: screenSize.height * 0.05,
            left: screenSize.width * 0.05,
            right: screenSize.width * 0.05,
            child: GestureDetector(
              onTap: () {
                context.router.push(SearchRoute());
              },
              child: SearchBarAndFilter(
                controller: _searchController,
                onChanged: (text) {
                  ref.read(SearchQueryProvider.notifier).state = text;
                },
                onFilterPressed: () => context.router.push(const FilterRoute()),
                textFieldInteractable: false,
                focusNode: null,
              ),
            ),
          ),
          AnimatedPositioned(
            key: _shortInfoKey,
            duration: const Duration(milliseconds: 300),
            bottom: isInfoVisible ? 0 : -getShortInfoHeight(),
            left: 0,
            right: 0,
            child: const ShortInfoUI(),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            bottom: isInfoVisible ? getShortInfoHeight() : 16.0,
            right: 16.0,
            child: FloatingActionButton(
              shape: const CircleBorder(),
              onPressed: () async {
                await _checkLocationPermission();
              },
              child: SvgPicture.asset('assets/icons/floating_button_icon.svg'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const SimpleBottomAppBar(),
    );
  }
}
