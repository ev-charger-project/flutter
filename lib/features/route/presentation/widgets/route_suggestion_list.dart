import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/location/presentation/providers/selected_location_id_provider.dart';
import 'package:ev_charger/features/mapview/domain/providers/is_info_visible_provider.dart';
import 'package:ev_charger/features/splash/widgets/dots_circular_progress_painter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../repositories/marker/entities/charger_marker_entity.dart';
import '../../../../routes/app_route.dart';
import '../../../../shared/core/localization/localization.dart';
import '../../../../shared/domain/providers/suggestion/suggestion_provider.dart';
import '../../domain/providers/route_to_provider.dart';
import '../providers/end_provider.dart';

class RouteSuggestionList extends ConsumerWidget {
  const RouteSuggestionList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suggestions = ref.watch(RouteToProvider);

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
                width: screenSize.width * 0.85,
              ),
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              Text(
                AppLocalizations.of(context).translate("Not found"),
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenSize.width * 0.1, vertical: 20),
                child: Text(
                  AppLocalizations.of(context).translate("We're sorry, the key word you were looking for could not be found. Please try again with another key words."),
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
            return Column(
              children: [
                ListTile(
                  leading: SvgPicture.asset(
                    'assets/icons/station_marker.svg',
                    height: screenSize.height * 0.08,
                  ),
                  title: Text(
                    suggestion.locationName,
                    style: Theme.of(context).textTheme.headlineMedium,
                    maxLines: 2,
                  ),
                  subtitle: Text(
                    '${suggestion.street}, ${suggestion.district}, ${suggestion.city}',
                    style: Theme.of(context).textTheme.bodySmall,
                    maxLines: 2,
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    ref.read(endProvider.notifier).updateEndLocation(ChargerMarkerEntity(
                      id: 'destinationLocation',
                      latitude: suggestion.latitude,
                      longitude:suggestion.longitude,
                    ));

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
    );
  }
}
