import 'dart:async';
import 'package:auto_route/annotations.dart';
import 'package:ev_charger/shared/presentation/widgets/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../shared/domain/providers/marker/marker_provider.dart';
import '../../../location/presentation/providers/selected_location_id_provider.dart';
import '../widgets/short_info_ui.dart';

@RoutePage()
class MapScreen extends ConsumerStatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(10.8023163, 106.6645121),
    zoom: 16,
  );

  final List<Marker> _markers = <Marker>[];
  bool _isInfoVisible = false;

  @override
  Widget build(BuildContext context) {
    final markerAsyncValue = ref.watch(markerProvider(2));

    return Scaffold(
      body: Stack(
        children: [
          markerAsyncValue.when(
            data: (markers) {
              final Set<Marker> googleMapMarkers = markers.map((marker) {
                return marker.copyWith(
                  onTapParam: () {
                    ref.read(selectedLocationIdProvider.notifier).state = marker.markerId.value;
                    setState(() {
                      _isInfoVisible = true;
                    });
                  },
                );
              }).toSet();
              googleMapMarkers.addAll(_markers);

              return GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                markers: googleMapMarkers,
                mapToolbarEnabled: false,
                zoomControlsEnabled: false,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                onTap: (LatLng position) {
                  setState(() {
                    _isInfoVisible = false;
                  });
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            bottom: _isInfoVisible ? 0.0 : -300.0,
            left: 0,
            right: 0,
            child: const ShortInfoUI(),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            bottom: _isInfoVisible ? 280.0 : 16.0,
            right: 16.0,
            child: FloatingActionButton(
              shape: const CircleBorder(),
              onPressed: () async {
                LatLng fixedLocation = const LatLng(10.8023163, 106.6645121);
                _markers.add(
                  Marker(
                    markerId: const MarkerId("user_location"),
                    position: fixedLocation,
                  ),
                );

                // Update camera position to the fixed location
                CameraPosition cameraPosition = CameraPosition(
                  target: fixedLocation,
                  zoom: 16,
                );

                final GoogleMapController controller = await _controller.future;
                controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
                setState(() {});
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

