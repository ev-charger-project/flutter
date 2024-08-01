import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../repositories/location/entities/location_entity.dart';
import '../../../../repositories/marker/entities/charger_marker_entity.dart';
import '../../../../routes/app_route.dart';
import '../../../../shared/core/localization/localization.dart';
import '../../../../shared/domain/providers/location/location_provider.dart';
import '../../../../shared/domain/providers/location/user_location_provider.dart';
import '../../../../shared/domain/providers/permission/permission_provider.dart';
import '../../../notification/screens/permission_screen.dart';
import '../../../route/presentation/providers/end_provider.dart';
import '../../../route/presentation/providers/start_provider.dart';

class ViewRouteDirectionButtons extends ConsumerWidget {
  const ViewRouteDirectionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    void handleButtonPress2() async {
      final permissionState = ref.read(permissionProvider);

      if (!permissionState.hasPermission) {
        _showPermissionDialog(context);
      } else {
        final userLocation = ref.read(userLocationProvider);
        final destinationLocation = ref.read(locationProvider);

        if (userLocation != null && destinationLocation is AsyncData<LocationEntity>) {
          _updateStartAndEndLocations(ref, userLocation, destinationLocation.value!);
          context.router.push(RouteRoute());
        }
      }
    }

    void handleButtonPress() async {
      final permissionState = ref.read(permissionProvider);

      if (!permissionState.hasPermission) {
        showDialog(
          context: context,
          builder: (context) => const PermissionScreen(),
        );
      } else {
        final userLocation = ref.read(userLocationProvider);
        final destinationLocation = ref.read(locationProvider);

        if (userLocation != null && destinationLocation is AsyncData) {
          final destination = destinationLocation.value;
          final url = Uri.parse(
              'https://www.google.com/maps/dir/?api=1&origin=${userLocation.latitude},${userLocation.longitude}&destination=${destination?.latitude},${destination?.longitude}&travelmode=driving');

          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          } else {
            throw 'Could not launch $url';
          }
        }
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(
            child: OutlinedButton(
              onPressed: () => context.router.push(const LocationRoute()),
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(0),
                side: BorderSide(color: Theme.of(context).colorScheme.primary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                AppLocalizations.of(context).translate('View'),
                style: Theme.of(context)
                    .primaryTextTheme
                    .bodyMedium
                    ?.copyWith(fontSize: height * 0.02),
              ),
            ),
          ),
        ),
        SizedBox(width: width * 0.01),
        Expanded(
          child: SizedBox(
            child: OutlinedButton(
              onPressed: handleButtonPress2,
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(0),
                side: BorderSide(color: Theme.of(context).colorScheme.primary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                AppLocalizations.of(context).translate('Route Plan'),
                style: Theme.of(context)
                    .primaryTextTheme
                    .bodyMedium
                    ?.copyWith(fontSize: height * 0.02),
              ),
            ),
          ),
        ),
        SizedBox(width: width * 0.01),
        Expanded(
          child: SizedBox(
            child: ElevatedButton(
              onPressed: handleButtonPress,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                backgroundColor: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                AppLocalizations.of(context).translate('Direction'),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: height * 0.02,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

void _showPermissionDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const PermissionScreen(),
  );
}

void _updateStartAndEndLocations(WidgetRef ref, Position userLocation, LocationEntity destinationLocation) {
  ref.read(startProvider.notifier).updateStartLocation(ChargerMarkerEntity(
    id: 'Your Location',
    latitude: userLocation.latitude,
    longitude: userLocation.longitude,
  ));

  final locationName = _buildLocationName(destinationLocation);

  ref.read(endProvider.notifier).updateEndLocation(ChargerMarkerEntity(
    id: locationName,
    latitude: destinationLocation.latitude,
    longitude: destinationLocation.longitude,
  ));
}

String _buildLocationName(LocationEntity location) {
  List<String> parts = [];
  if (location.name.isNotEmpty) {
    parts.add(location.name);
  }
  if (location.street.isNotEmpty) {
    parts.add(location.street);
  }
  if (location.district != null && location.district!.isNotEmpty) {
    parts.add(location.district!);
  }
  return parts.join(', ');
}
