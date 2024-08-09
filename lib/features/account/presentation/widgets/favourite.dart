import 'package:auto_route/auto_route.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../routes/app_route.dart';
import '../../../../shared/domain/providers/user/fav_provider.dart';
import '../../../location/presentation/providers/selected_location_id_provider.dart';
import '../../../mapview/domain/providers/is_info_visible_provider.dart';

class Favorite extends ConsumerWidget {
  const Favorite({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;
    final favouriteAsyncValue = ref.read(favProvider);
    // final locations = locationDataModelResult
    //     .map((item) => item.favourite)
    //     .toList();
    return ExpandablePanel(
      header: Text(
        "Favourite",
        style: Theme.of(context).textTheme.displayMedium,
      ),
      collapsed: const SizedBox.shrink(),
      expanded: favouriteAsyncValue.when(
        data: (favourite) {
          var answer = favourite.map((item) => item.favourite)
              .toList();
          return ListView.builder(
            shrinkWrap: true,
            itemCount: favourite.length,
            itemBuilder: (context, index) {
              final suggestion = answer[index];
              String distanceText = '';
              return Column(
                children: [
                  ListTile(
                    leading: SvgPicture.asset(
                      'assets/icons/station_marker.svg',
                      height: screenSize.height * 0.08,
                    ),
                    title: Text(
                      suggestion.name,
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
                    onTap: () {
                      ref.read(selectedLocationIdProvider.notifier).state =
                          suggestion.id!;
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
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stack) => Center(
          child: Text(
            'Failed to load favourites: $error',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
      theme: const ExpandableThemeData(
        headerAlignment: ExpandablePanelHeaderAlignment.center,
        tapBodyToExpand: true,
        tapBodyToCollapse: true,
        hasIcon: true,
      ),
    );
  }
}
