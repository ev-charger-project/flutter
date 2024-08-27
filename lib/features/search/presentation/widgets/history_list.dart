import 'dart:math' as math;
import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/location/presentation/providers/selected_location_id_provider.dart';
import 'package:ev_charger/features/mapview/domain/providers/is_info_visible_provider.dart';
import 'package:ev_charger/features/splash/widgets/dots_circular_progress_painter_widget.dart';
import 'package:ev_charger/repositories/location_search_history/location_search_history_repository_provider.dart';
import 'package:ev_charger/shared/domain/providers/location/location_search_history_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../routes/app_route.dart';
import '../../../../shared/core/localization/localization.dart';
import '../../../../shared/domain/providers/auth/auth_provider.dart';
import '../../../../shared/domain/providers/secure_storage_service_provider.dart';
import '../../../../shared/domain/providers/location/user_location_provider.dart';

class HistoryList extends ConsumerWidget {
  const HistoryList({
    super.key,
  });

  double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    const earthRadius = 6371;
    final dLat = _degToRad(lat2 - lat1);
    final dLon = _degToRad(lon2 - lon1);
    final a = math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.cos(_degToRad(lat1)) *
            math.cos(_degToRad(lat2)) *
            math.sin(dLon / 2) *
            math.sin(dLon / 2);
    final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
    return earthRadius * c;
  }

  double _degToRad(double deg) {
    return deg * (math.pi / 180);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAuthenticated = ref.watch(authProvider).value;
    final histories = ref.watch(locationSearchHistoryProvider);
    final userLocation = ref.read(userLocationProvider);

    final screenSize = MediaQuery.of(context).size;

    return !histories.hasError
        ? histories.when(
            data: (histories) {
              return histories.isEmpty
                  ? Center(
                      child: Text(
                        AppLocalizations.of(context)
                            .translate('Enter search text to see results.'),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    )
                  : Column(children: [
                      Text(
                        "Recently Visited Locations",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: histories.length,
                        itemBuilder: (context, index) {
                          final history = histories[index];
                          String distanceText = '';

                          if (userLocation != null) {
                            final distance = calculateDistance(
                              userLocation.latitude,
                              userLocation.longitude,
                              history.location.latitude,
                              history.location.longitude,
                            );
                            distanceText = '${distance.toStringAsFixed(2)} km';
                          }
                          return Column(
                            children: [
                              Dismissible(
                                key: Key(history.id),
                                background: Container(color: Colors.red),
                                onDismissed: (direction) async {
                                  // Remove the item from the data source.
                                  if (isAuthenticated!) {
                                    final locationSearchHistoryRepository =
                                        ref.watch(
                                            locationSearchHistoryRepositoryProvider);
                                    final secureStorage =
                                        ref.watch(secureStorageServiceProvider);
                                    var tokenData =
                                        await secureStorage.getToken();
                                    await locationSearchHistoryRepository
                                        .deleteLocationSearchHistoryData(
                                            history.id,
                                            tokenData!.access_token);
                                    ref.refresh(locationSearchHistoryProvider);
                                  }

                                  // Then show a snack bar.
                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                'Cleared ${history.location.name} from history')));
                                  }
                                },
                                child: ListTile(
                                  leading: SvgPicture.asset(
                                    'assets/icons/station_marker.svg',
                                    height: screenSize.height * 0.08,
                                  ),
                                  title: Text(
                                    history.location.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                    maxLines: 2,
                                  ),
                                  subtitle: Text(
                                    '${history.location.street}, ${history.location.district}',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                    maxLines: 2,
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      if (distanceText.isNotEmpty)
                                        Text(
                                          distanceText,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                      const Icon(Icons.arrow_forward_ios),
                                    ],
                                  ),
                                  onTap: () async {
                                    ref
                                        .read(
                                            selectedLocationIdProvider.notifier)
                                        .state = history.location.id;
                                    ref
                                        .read(isInfoVisibleProvider.notifier)
                                        .state = true;
                                    if (isAuthenticated!) {
                                      final locationSearchHistoryRepository =
                                          ref.watch(
                                              locationSearchHistoryRepositoryProvider);
                                      final secureStorage = ref
                                          .watch(secureStorageServiceProvider);
                                      var tokenData =
                                          await secureStorage.getToken();
                                      await locationSearchHistoryRepository
                                          .createLocationSearchHistoryData(
                                              history.location.id,
                                              tokenData!.access_token);
                                      ref.refresh(
                                          locationSearchHistoryProvider);
                                    }
                                    if (context.mounted) {
                                      context.router.push(MapRoute(
                                          longitude: history.location.longitude,
                                          latitude: history.location.latitude));
                                    }
                                  },
                                ),
                              ),
                              Divider(
                                color: Theme.of(context).dividerColor,
                                thickness: 1,
                              ),
                            ],
                          );
                        },
                      )
                    ]);
            },
            loading: () => Center(
              child: SizedBox(
                height: 60,
                child: DotsCircularProgressIndicator(
                  color: Theme.of(context).colorScheme.primary,
                  numberOfDots: 8,
                ),
              ),
            ),
            error: (error, stack) => Center(child: Text('Error: $error')),
          )
        : Center(
            child: Text(
              AppLocalizations.of(context)
                  .translate('Enter search text to see results.'),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          );
  }
}
