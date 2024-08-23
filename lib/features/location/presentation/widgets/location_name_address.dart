
import 'package:ev_charger/shared/domain/providers/location/location_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/domain/providers/location/user_location_provider.dart';
import '../../../../shared/domain/providers/permission/permission_provider.dart';
import '../../../notification/permission/screens/permission_screen.dart';

import '../providers/distance_duration_provider.dart';

class LocationNameAddress extends ConsumerWidget {
  const LocationNameAddress({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocation = ref.watch(locationProvider);
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: currentLocation.when(
        data: (location) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: (MediaQuery.of(context).size.width * 0.15)),
              child: Text(
                _breakTextEarly(location.name, context,
                    Theme.of(context).textTheme.displayLarge!),
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '${location.street}, ${location.district}, ${location.city}',
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            DistanceFromUser(
              destinationLat: location.latitude,
              destinationLong: location.longitude,
            ),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }

  String _breakTextEarly(String text, BuildContext context, TextStyle style) {
    final maxWidth =
        MediaQuery.of(context).size.width - 32; // Considering padding
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: maxWidth);

    if (textPainter.didExceedMaxLines) {
      for (int i = 0; i < text.length; i++) {
        textPainter.text = TextSpan(
            text: text.substring(0, i) + "\n" + text.substring(i),
            style: style);
        textPainter.layout(maxWidth: maxWidth);

        if (!textPainter.didExceedMaxLines) {
          return text.substring(0, i) + "\n" + text.substring(i);
        }
      }
    }

    return text;
  }
}

class DistanceFromUser extends ConsumerWidget {
  final double destinationLat;
  final double destinationLong;

  const DistanceFromUser({
    required this.destinationLat,
    required this.destinationLong,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String distance = '~ km';
    String time = '~ mins';
    final permissionState = ref.watch(permissionProvider);
    final userLocation = ref.watch(userLocationProvider);

    if (permissionState.hasPermission && userLocation != null) {
      final distanceAndDurationAsyncValue =
          ref.watch(distanceAndDurationProvider);

      return distanceAndDurationAsyncValue.when(
        data: (data) {
          distance = data[0];
          time = data[1];
          return _buildContent(
              distance, time, permissionState.hasPermission, context);
        },
        loading: () => _buildContent(
            'Loading...', 'Loading...', permissionState.hasPermission, context),
        error: (error, stack) => _buildContent(
            'Error', 'Error', permissionState.hasPermission, context),
      );
    } else {
      return _buildContent(
          distance, time, permissionState.hasPermission, context);
    }
  }

  Widget _buildContent(String distance, String time, bool userAllowAccess,
      BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/location_icon.svg'),
        const SizedBox(width: 5),
        Text(
          distance,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.black,
                fontSize: 20,
              ),
        ),
        const SizedBox(width: 20),
        SvgPicture.asset('assets/icons/car_icon.svg'),
        const SizedBox(width: 5),
        Text(
          time,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        if (!userAllowAccess) ...[
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const PermissionScreen(),
              );
            },
            child: const Icon(
              Icons.info_outline,
              color: Colors.red,
              size: 30.0,
            ),
          ),
        ],
      ],
    );
  }
}
