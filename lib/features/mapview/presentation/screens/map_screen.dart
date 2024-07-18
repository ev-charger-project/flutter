import 'dart:async';
import 'package:auto_route/annotations.dart';
import 'package:ev_charger/features/mapview/domain/providers/screen_center_provider.dart';
import 'package:ev_charger/shared/presentation/widgets/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../domain/providers/is_info_visible_provider.dart';
import '../../domain/providers/marker/marker_provider.dart';
import '../widgets/short_info_ui.dart';

@RoutePage()
class MapScreen extends ConsumerStatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> with WidgetsBindingObserver{
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  GoogleMapController? _mapController;
  final List<Marker> _markers = <Marker>[];
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(10.8023163, 106.6645121),
    zoom: 16,
  );

  @override
  void dispose() {
    print('mapview is dispose');
    WidgetsBinding.instance.removeObserver(this);
    _mapController?.dispose();
    super.dispose();
  }

  @override
  void initState() {

    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state){
    if(state==AppLifecycleState.paused ||state==AppLifecycleState.inactive ){

      _mapController?.dispose();
    }
  }


  @override
  Widget build(BuildContext context) {
    final isInfoVisible = ref.watch(isInfoVisibleProvider);
    final markerAsyncValue = ref.watch(markerProvider);

    markerAsyncValue.when(
      data: (markers) {
        _updateMarkers(markers);
      },
      loading: () {},
      error: (error, stack) => print('Error: $error'),
    );

    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            markers: Set<Marker>.of(_markers),
            mapToolbarEnabled: false,
            zoomControlsEnabled: false,
            minMaxZoomPreference: const MinMaxZoomPreference(10, 17),
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
                (visibleRegion.northeast.latitude + visibleRegion.southwest.latitude) / 2,
                (visibleRegion.northeast.longitude + visibleRegion.southwest.longitude) / 2,
              );
              ref.read(screenCenterProvider.notifier).state = center;
            },
            onTap: (LatLng position) {
              ref.read(isInfoVisibleProvider.notifier).state = false;
            },

          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            bottom: isInfoVisible ? 0 : -1000.0,
            left: 0,
            right: 0,
            child: const ShortInfoUI(),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            bottom: isInfoVisible
                ? MediaQuery.of(context).size.height * 0.065 + 230
                : 16.0,
            right: 16.0,
            child: FloatingActionButton(
              shape: const CircleBorder(),
              onPressed: () async {
                LatLng fixedLocation = LatLng(10.8023163, 106.6645121);
                CameraPosition cameraPosition = CameraPosition(
                  target: fixedLocation,
                  zoom: 16,
                );
                final GoogleMapController controller = await _controller.future;
                controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
              },
              child: SvgPicture.asset('assets/icons/floating_button_icon.svg'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const SimpleBottomAppBar(),
    );
  }

  void _updateMarkers(List<Marker> markers) {
    setState(() {
      _markers.clear();
      _markers.addAll(markers);
    });
  }

}
