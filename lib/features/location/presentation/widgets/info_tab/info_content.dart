import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ev_charger/shared/domain/providers/location/location_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ev_charger/shared/core/constant/constants.dart' as constants;
import 'package:path/path.dart' as p;

import '../../../../../repositories/location_amenity/entities/location_amenity_entity.dart';
import '../../../../../shared/core/localization/localization.dart';
import 'nearbyList.dart';

class InfoContent extends ConsumerStatefulWidget {
  const InfoContent({super.key});

  @override
  _InfoContentState createState() => _InfoContentState();
}

class _InfoContentState extends ConsumerState<InfoContent> {
  bool isExpanded = false;
  bool isOverflowing = false;
  final GlobalKey _textKey = GlobalKey();

  void _checkTextOverflow() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox renderBox =
          _textKey.currentContext?.findRenderObject() as RenderBox;
      final size = renderBox.size;
      final double maxHeight =
          4 * Theme.of(context).textTheme.bodyMedium!.fontSize! * 1.2;

      if (size.height > maxHeight) {
        setState(() {
          isOverflowing = true;
        });
      }
    });
  }

  String dayToString(int day) {
    switch (day) {
      case 7:
        return AppLocalizations.of(context).translate('Sunday');
      case 1:
        return AppLocalizations.of(context).translate('Monday');
      case 2:
        return AppLocalizations.of(context).translate('Tuesday');
      case 3:
        return AppLocalizations.of(context).translate('Wednesday');
      case 4:
        return AppLocalizations.of(context).translate('Thursday');
      case 5:
        return AppLocalizations.of(context).translate('Friday');
      case 6:
        return AppLocalizations.of(context).translate('Saturday');
      default:
        return '';
    }
  }

  Widget _buildAboutSection(String? longText) {
    if (longText == null || longText.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 20),
        Text(
          'About',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(height: 2),
        Text(
          longText,
          key: _textKey,
          style: Theme.of(context).textTheme.bodyMedium,
          maxLines: isExpanded ? null : 4,
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
        if (isOverflowing || isExpanded)
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded
                  ? AppLocalizations.of(context).translate('Read less')
                  : AppLocalizations.of(context).translate('Read more'),
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
          ),
        const SizedBox(height: 10),
      ],
    );
  }

  // Widget _buildAmenitiesSection(
  //     List<LocationAmenityEntity> locationAmenitiesData) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       border: Border.all(
  //         color: Colors.white,
  //         width: 1.0,
  //       ),
  //       color: Theme.of(context).stationGrey,
  //     ),
  //     child: ExpandablePanel(
  //       header: Container(
  //         padding: const EdgeInsets.symmetric(horizontal: 16.0),
  //         child: Text(
  //           'Amenities',
  //           style: Theme.of(context).textTheme.bodySmall,
  //         ),
  //       ),
  //       collapsed: Container(), // Nothing to show when collapsed
  //       expanded: Column(
  //         children: locationAmenitiesData.map((entry) {
  //           return Container(
  //             decoration: BoxDecoration(
  //               border: const Border(
  //                 top: BorderSide(
  //                   color: Colors.white,
  //                   width: 2.0,
  //                 ),
  //               ),
  //               color: Theme.of(context).stationGrey,
  //             ),
  //             child: Padding(
  //               padding:
  //                   const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 children: [
  //                   p.extension(entry.amenities.imageUrl) == ".svg"
  //                       ? SvgPicture.network(
  //                           '${constants.uri}${constants.mediaUrl}/${entry.amenities.imageUrl}',
  //                           width: 24,
  //                           height: 24,
  //                         )
  //                       : Image.network(
  //                           '${constants.uri}${constants.mediaUrl}/${entry.amenities.imageUrl}',
  //                           width: 24,
  //                           height: 24),
  //                   const SizedBox(width: 12),
  //                   Text(
  //                     entry.amenities.amenity,
  //                     style: Theme.of(context).textTheme.titleMedium,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           );
  //         }).toList(),
  //       ),
  //       theme: const ExpandableThemeData(
  //         tapHeaderToExpand: true,
  //         hasIcon: true,
  //         headerAlignment: ExpandablePanelHeaderAlignment.center,
  //       ),
  //     ),
  //   );
  // }

  Widget _buildWorkingHoursList(List<Map<String, String>> workingHours) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1.0,
        ),
        color: Theme.of(context).stationGrey,
      ),
      child: ExpandablePanel(
        header: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Working Hours',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        collapsed: Container(), // Nothing to show when collapsed
        expanded: Column(
          children: workingHours.map((Map<String, String> entry) {
            String day = entry.keys.first;
            String hours = entry.values.first;
            return Container(
              decoration: BoxDecoration(
                border: const Border(
                  top: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                color: Theme.of(context).stationGrey,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      day,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      hours,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
        theme: const ExpandableThemeData(
          tapHeaderToExpand: true,
          hasIcon: true,
          headerAlignment: ExpandablePanelHeaderAlignment.center,
        ),
      ),
    );
  }

  Widget _buildDataList(List<Map<String, String>> data) {
    return Column(
      children: List.generate(
        data.length,
        (index) => Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            color: Theme.of(context).stationGrey,
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data[index].keys.first,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  data[index].values.first,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentLocation = ref.watch(locationProvider);

    return Container(
      child: currentLocation.when(
        data: (location) {
          final String? longText = location.description;
          final List<Map<String, String>> data = [];
          final List<Map<String, String>> workingHours = [];
          // final List<Map<String, String>> locationAmenities = [];
          if (location.pricing != null && location.pricing!.isNotEmpty) {
            data.add({
              AppLocalizations.of(context).translate('Fee'): location.pricing!
            });
          }
          if (location.phoneNumber != null &&
              location.phoneNumber!.isNotEmpty) {
            data.add({
              AppLocalizations.of(context).translate('Phone'):
                  location.phoneNumber!
            });
          }
          if (location.parkingLevel != null &&
              location.parkingLevel!.isNotEmpty) {
            data.add({
              AppLocalizations.of(context).translate('Parking Level'):
                  location.parkingLevel!
            });
          }

          for (var workingDay in location.workingDays) {
            workingHours.add({
              dayToString(workingDay.day):
                  '${workingDay.openTime.substring(0, 5)} - ${workingDay.closeTime.substring(0, 5)}'
            });
          }

          // for (var locationAmenity in location.locationAmenities) {
          //   locationAmenities.add({
          //     locationAmenity.amenities.amenity:
          //     '${workingDay.openTime.substring(0, 5)} - ${workingDay.closeTime.substring(0, 5)}'
          //   });
          // }

          WidgetsBinding.instance
              .addPostFrameCallback((_) => _checkTextOverflow());

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildAboutSection(longText),
              _buildDataList(data),
              _buildWorkingHoursList(workingHours),
              // _buildAmenitiesSection(location.locationAmenities),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  color: Theme.of(context).dividerColor,
                  thickness: 1,
                ),
              ),
              Text(
                AppLocalizations.of(context).translate('Nearby'),
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              const NearbyList(),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
