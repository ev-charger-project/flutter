import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
  final googleApiKey = 'AIzaSyAGYJacplt2I8syt0aY4GXfSNXhKdsXUgM';

  @override
  Widget build(BuildContext context) {
    final markerAsyncValue = ref.watch(routeProvider);
    // final currentLocation = ref.watch(locationProvider);
    final currentLocation = LatLng(10.862622, 106.760172);
    // final userLocation = ref.watch(userLocationProvider);
    final userLocation = LatLng(10.762622, 106.660172);

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


    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(userLocation!.latitude, userLocation.longitude),
              zoom: 14,
            ),
            fortyFiveDegreeImageryEnabled: false,
            indoorViewEnabled: false,
            compassEnabled: false,
            tiltGesturesEnabled: false,
            buildingsEnabled: false,
            mapToolbarEnabled: false,
            zoomControlsEnabled: false,
            minMaxZoomPreference: const MinMaxZoomPreference(12, 17),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
              _drawPolyline(
                  LatLng(userLocation!.latitude, userLocation.longitude),
                  currentLocation);
            },
            polylines: _polylines,
          ),
          LocationAppBar(screenSize: screenSize),
          StartButton(),
        ],
      ),
    );
  }

  Future<void> _drawPolyline(LatLng start, LatLng end) async {
    final PolylinePoints polylinePoints = PolylinePoints();
    final PolylineResult result =
        await polylinePoints.getRouteBetweenCoordinates(
      googleApiKey: googleApiKey,
      request: PolylineRequest(
          origin: PointLatLng(start.latitude, start.longitude),
          destination: PointLatLng(end.latitude, end.longitude),
          mode: TravelMode.driving),
    );

    if (result.points.isNotEmpty) {
      final List<LatLng> polylineCoordinates = result.points
          .map((PointLatLng point) => LatLng(point.latitude, point.longitude))
          .toList();

      setState(() {
        _polylines.add(Polyline(
          polylineId: const PolylineId('route'),
          color: Theme.of(context).colorScheme.primary,
          points: polylineCoordinates,
          width: 5,
        ));
      });
    }
  }
}

