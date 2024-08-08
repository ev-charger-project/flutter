import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/route/domain/providers/route_marker_provider.dart';
import 'package:ev_charger/features/route/presentation/providers/start_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../mapview/domain/providers/is_info_visible_provider.dart';
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

  @override
  Widget build(BuildContext context) {
    final routeAsyncValue = ref.watch(routeProvider);
    final userCurrentLocation = ref.read(startProvider);
    LatLng startLocation = LatLng(userCurrentLocation.latitude, userCurrentLocation.longitude);
    final markerAsyncValue = ref.watch(routeMarkerProvider);

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

    routeAsyncValue.when(
      data: (route) {
        setState(() {
          _polylines.clear();
          final polylinePoints = PolylinePoints().decodePolyline(route.hashcode);

          final latLngPoints = polylinePoints
              .map((point) => LatLng(point.latitude, point.longitude))
              .toList();

          _polylines.add(
            Polyline(
              polylineId: const PolylineId('route'),
              color: Colors.green,
              points: latLngPoints,
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
              target: LatLng(startLocation.latitude, startLocation.longitude),
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
