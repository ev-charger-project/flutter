import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/route/domain/providers/polypoints_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../shared/domain/providers/location/user_location_provider.dart';
import '../../../mapview/domain/providers/is_info_visible_provider.dart';
import '../../domain/providers/route_provider.dart';
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

  @override
  Widget build(BuildContext context) {
    final isInfoVisible = ref.watch(isInfoVisibleProvider);
    final markerAsyncValue = ref.watch(routeProvider);
    final polypointsAsyncValue = ref.watch(polypointsProvider);
    final userLocation = ref.watch(userLocationProvider);

    markerAsyncValue.when(
      data: (markers) {
        setState(() {
          _markers.clear();
          _markers.addAll(markers);
        });
      },
      loading: () {},
      error: (error, stack) => print('Error: $error'),
    );

    polypointsAsyncValue.when(
      data: (polypoints) {
        setState(() {
          _polylines.clear();  // Clear previous polylines
          _polylines.add(
            Polyline(
              polylineId: const PolylineId('route'),
              color: Colors.green,
              points: polypoints,
              width: 5,
            ),
          );
        });
      },
      loading: () {},
      error: (error, stack) => print('Error: $error'),
    );


    final screenSize = MediaQuery.of(context).size;
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
            minMaxZoomPreference: const MinMaxZoomPreference(12, 17),
            markers: Set<Marker>.of(_markers),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);

            },
            polylines: _polylines,
          ),
          LocationAppBar(screenSize: screenSize),
          StartButton(),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            bottom:  96.0,
            right: 16.0,
            child: FloatingActionButton(
              shape: const CircleBorder(),
              onPressed: () async {
                ref.read(isInfoVisibleProvider.notifier).state = false;
              },
              child: SizedBox(
                height: 30,
                child: SvgPicture.asset('assets/icons/floating_button_icon.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

