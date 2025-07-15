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
import '../../../../shared/domain/providers/suggestion/suggestion_provider.dart';
import '../../../../shared/domain/providers/location/user_location_provider.dart';

class SuggestionList extends ConsumerWidget {
  const SuggestionList({
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
    final suggestions = ref.watch(suggestionProvider);
    final userLocation = ref.read(userLocationProvider);

    final screenSize = MediaQuery.of(context).size;

    return suggestions.when(
      data: (suggestions) {
        return suggestions.isEmpty
            ? SingleChildScrollView(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenSize.height * 0.1,
                    ),
                    Image.asset(
                      'assets/images/not_found.png',
                      width: screenSize.width * 0.85,
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                    Text(
                      "Not found",
                      style: Theme.of(context).textTheme.displayLarge,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * 0.1, vertical: 20),
                      child: Text(
                        AppLocalizations.of(context).translate(
                            "We're sorry, the key word you were looking for could not be found. Please try again with another key words."),
                        style: Theme.of(context).textTheme.titleSmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              )
            : ListView.builder(
                shrinkWrap: true,
                itemCount: suggestions.length,
                itemBuilder: (context, index) {
                  final suggestion = suggestions[index];
                  String distanceText = '';

                  if (userLocation != null) {
                    final distance = calculateDistance(
                      userLocation.latitude,
                      userLocation.longitude,
                      suggestion.latitude,
                      suggestion.longitude,
                    );
                    distanceText = '${distance.toStringAsFixed(2)} km';
                  }

                  return Column(
                    children: [
                      ListTile(
                        leading: Container(
                          child: SvgPicture.asset(
                            'assets/icons/station_marker.svg',
                            height: screenSize.height * 0.08,
                          ),
                        ),
                        title: Text(
                          suggestion.locationName,
                          style: Theme.of(context).textTheme.headlineMedium,
                          maxLines: 2,
                        ),
                        subtitle: Text(
                          '${suggestion.street}, ${suggestion.district}',
                          style: Theme.of(context).textTheme.bodySmall,
                          maxLines: 2,
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (distanceText.isNotEmpty)
                              Text(
                                distanceText,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        onTap: () async {
                          ref.read(selectedLocationIdProvider.notifier).state =
                              suggestion.locationId;
                          ref.read(isInfoVisibleProvider.notifier).state = true;
                          if (isAuthenticated!) {
                            final locationSearchHistoryRepository = ref
                                .watch(locationSearchHistoryRepositoryProvider);
                            final secureStorage =
                                ref.watch(secureStorageServiceProvider);
                            var tokenData = await secureStorage.getToken();
                            await locationSearchHistoryRepository
                                .createLocationSearchHistoryData(
                                    suggestion.locationId,
                                    tokenData!.access_token);
                            ref.refresh(locationSearchHistoryProvider);
                          }
                          if (context.mounted) {
                            context.router.push(MapRoute(
                                longitude: suggestion.longitude,
                                latitude: suggestion.latitude));
                          }
                        },
                      ),
                      Divider(
                        color: Theme.of(context).dividerColor,
                        thickness: 1,
                      ),
                    ],
                  );
                },
              );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
