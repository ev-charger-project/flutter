import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../shared/core/localization/localization.dart';
import '../../../../shared/domain/providers/location/user_location_provider.dart';
import '../../../../shared/domain/providers/permission/permission_provider.dart';
import '../../../../shared/domain/providers/location/location_provider.dart';
import '../../../notification/screens/permission_screen.dart';

class RouteDirectionButtons extends ConsumerWidget {
  const RouteDirectionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

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
              onPressed: handleButtonPress,
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(0),
                side: BorderSide(color: Theme.of(context).colorScheme.primary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                AppLocalizations.of(context).translate('Route Plan'),
                style: Theme.of(context).primaryTextTheme.bodyMedium,
              ),
            ),
          ),
        ),
        SizedBox(width: width * 0.015),
        Expanded(
          child: SizedBox(
            child: ElevatedButton(
              onPressed: handleButtonPress,
              style: ElevatedButton.styleFrom(
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
