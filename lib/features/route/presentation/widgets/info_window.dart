import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ev_charger/features/route/domain/providers/time_distance_provider.dart';

class DistanceTime extends ConsumerWidget {
  const DistanceTime({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;
    final timeDistanceAsyncValue = ref.watch(routeTimeDistanceProvider);

    String infoWindowText = '';
    timeDistanceAsyncValue.when(
      data: (routeInfo) {
        infoWindowText =
            '${routeInfo['distance']?.toStringAsFixed(2)} km, ${routeInfo['time']?.toStringAsFixed(2)} mins';
      },
      loading: () {
        infoWindowText = 'Loading...';
      },
      error: (error, stack) {
        infoWindowText = 'Error';
      },
    );

    return Positioned(
      left: 0,
      top: screenSize.height * 0.18,
      child: SizedBox(
        width: screenSize.width,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Text(
              infoWindowText,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
