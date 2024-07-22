import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../routes/app_route.dart';
import '../../../../shared/domain/providers/charger/charger_provider.dart';
import '../../../../shared/domain/providers/location/user_location_provider.dart';
import '../../../../shared/domain/providers/permission/permission_provider.dart';
import '../../../notification/screens/permission_screen.dart';

class ViewRouteDirectionButtons extends ConsumerWidget {
  const ViewRouteDirectionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final destinationLocation = ref.read(locationProvider);
    final destination = destinationLocation.value;
    final latitude =destination?.latitude;
    final longitude = destination?.longitude;

    void handleButtonPress() async {
      final permissionState = ref.read(permissionProvider);

      if (!permissionState.hasPermission) {
        showDialog(
          context: context,
          builder: (context) => const PermissionScreen(),
        );
      } else {
        final userLocation = ref.read(userLocationProvider);
        if (userLocation != null) {
          final url = Uri.parse(
              'https://www.google.com/maps/dir/?api=1&origin=${userLocation.latitude},${userLocation.longitude}&destination=$latitude,$longitude&travelmode=driving');

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
              style: OutlinedButton.styleFrom(padding: EdgeInsets.all(0),
                side: BorderSide(color: Theme.of(context).colorScheme.primary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                  'View',
                  style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(fontSize: height * 0.02),
              ),
            ),
          ),
        ),
        SizedBox(width: width * 0.01),
        Expanded(
          child: SizedBox(
            
            child: OutlinedButton(
              
              onPressed: handleButtonPress,
              style: OutlinedButton.styleFrom(padding: EdgeInsets.all(0),
                side: BorderSide(color: Theme.of(context).colorScheme.primary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                  'Route Plan',
                style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(fontSize: height * 0.02),
              ),
            ),
          ),
        ),
        SizedBox(width: width * 0.01),
        Expanded(
          child: SizedBox(
            child: ElevatedButton(
              onPressed: handleButtonPress,
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0),
                backgroundColor: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Direction',
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
