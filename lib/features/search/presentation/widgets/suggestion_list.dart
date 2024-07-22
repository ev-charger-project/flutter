import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/location/presentation/providers/selected_location_id_provider.dart';
import 'package:ev_charger/features/mapview/domain/providers/is_info_visible_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../routes/app_route.dart';
import '../../../../shared/domain/providers/suggestion/suggestion_provider.dart';

class SuggestionList extends ConsumerWidget {
  const SuggestionList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suggestions = ref.watch(suggestionProvider);

    final screenSize = MediaQuery.of(context).size;

    return suggestions.when(
      data: (suggestions) {
        return suggestions.isEmpty
            ? SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/not_found.png',
                      width: screenSize.width * 0.4,
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                    Text(
                      "Not found",
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge
                          ?.copyWith(fontSize: 28),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * 0.1, vertical: 20),
                      child: Text(
                        "We're sorry, the key word you were looking for could not be found. Please try again with another key words.",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 20),
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
                  return Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icons/station_marker.svg',
                          width: 60,
                          height: 60,
                        ),
                        title: Text(
                          suggestion.locationName,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        subtitle: Text(
                          '${suggestion.street}, ${suggestion.district}, ${suggestion.city}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          ref.read(selectedLocationIdProvider.notifier).state =
                              suggestion.locationId;
                          ref.read(isInfoVisibleProvider.notifier).state = true;
                          context.router.push(MapRoute(
                              longitude: suggestion.longitude,
                              latitude: suggestion.latitude));
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
