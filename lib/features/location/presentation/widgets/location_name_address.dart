import 'package:ev_charger/shared/domain/providers/location/location_provider.dart';
import 'package:ev_charger/shared/domain/providers/remote_storage_service_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/domain/providers/permission/permission_provider.dart';
import '../../../notification/screens/permission_screen.dart';
import 'package:ev_charger/shared/data/data_source/remote/postgresql/agest_storage_service.dart';

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
            Text(
              location.name,
              style: Theme.of(context).textTheme.displayLarge
            ),
            const SizedBox(height: 10),
            Text(
              '${location.street}, ${location.district}, ${location.city}',
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            const DistanceFromUser(),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}

class DistanceFromUser extends ConsumerWidget {
  const DistanceFromUser({
    super.key,
  });
  
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String distance = '~ km';
    String time = '~ mins';
    final permissionState = ref.watch(permissionProvider);

    if (permissionState.hasPermission) {
      
    }

    void handleButtonTap() {
      // final permissionState = ref.read(permissionProvider);

      if (!permissionState.hasPermission) {
        showDialog(
          context: context,
          builder: (context) => const PermissionScreen(),
        );
      } else {
        // user_allow_access = true;
        // print('access: $user_allow_access');
      }
    }
    // print('permission: $user_allow_access');


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
          style: Theme.of(context).textTheme.bodyMedium
        ),
        if (!permissionState.hasPermission) ...[
          const SizedBox(width: 20),
          GestureDetector(
            onTap: handleButtonTap,
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
