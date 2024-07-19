import 'package:ev_charger/shared/domain/providers/location/location_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

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
              '${location.street} ${location.district} ${location.city}',
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
    bool user_allow_access = false;
    String distance = '~ km';
    String time = '~ mins';

    if (user_allow_access) {
      final map = {'distance': '6.21 km', 'time': '89 mins'};
      distance = map['distance']!;
      time = map['time']!;
    }

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
        if (!user_allow_access) ...[
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              // call widget here
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
