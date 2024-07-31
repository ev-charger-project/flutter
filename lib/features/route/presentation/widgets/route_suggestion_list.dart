import 'package:ev_charger/features/splash/widgets/dots_circular_progress_painter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../repositories/marker/entities/charger_marker_entity.dart';
import '../../../../shared/core/localization/localization.dart';
import '../../domain/providers/route_from_provider.dart';
import '../../domain/providers/route_to_provider.dart';
import '../providers/end_provider.dart';
import '../providers/start_provider.dart';

class RouteSuggestionList extends ConsumerWidget {
  final Function(String, String, String, String) onSuggestionSelected;
  final bool isStart;

  const RouteSuggestionList({
    super.key,
    required this.onSuggestionSelected,
    required this.isStart,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suggestions =
        ref.watch(isStart ? RouteFromProvider : RouteToProvider);

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
                          if (isStart) {
                            ref
                                .read(startProvider.notifier)
                                .updateStartLocation(
                                  ChargerMarkerEntity(
                                    id: suggestion.locationName +
                                        suggestion.street +
                                        suggestion.district +
                                        suggestion.city,
                                    latitude: suggestion.latitude,
                                    longitude: suggestion.longitude,
                                  ),
                                );
                          } else {
                            ref.read(endProvider.notifier).updateEndLocation(
                                  ChargerMarkerEntity(
                                    id: suggestion.locationName +
                                        suggestion.street +
                                        suggestion.district +
                                        suggestion.city,
                                    latitude: suggestion.latitude,
                                    longitude: suggestion.longitude,
                                  ),
                                );
                          }
                          onSuggestionSelected(
                            suggestion.locationName,
                            suggestion.street,
                            suggestion.district,
                            suggestion.city,
                          );
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
