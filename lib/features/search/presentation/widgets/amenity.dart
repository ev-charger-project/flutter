import 'dart:developer';

import 'package:ev_charger/features/search/presentation/providers/amenity/selected_amenities_provider.dart';
import 'package:ev_charger/features/splash/widgets/dots_circular_progress_painter_widget.dart';
import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/core/localization/localization.dart';
import '../providers/amenity/available_amenities_provider.dart';
import 'amenity_object.dart';

class Amenity extends ConsumerStatefulWidget {
  const Amenity({super.key});

  @override
  ConsumerState createState() => _AmenityState();
}

class _AmenityState extends ConsumerState<Amenity> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final amenities = ref.watch(availableAmenitiesProvider);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.016),
      child: Container(
        padding: EdgeInsets.all(screenSize.height * 0.016),
        decoration: BoxDecoration(
          color: Theme.of(context).moreGrey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  AppLocalizations.of(context).translate("Amenities"),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            amenities.isEmpty
                ? Center(
                    child: DotsCircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                      numberOfDots: 8,
                    ),
                  )
                : GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.25,
                    ),
                    itemCount: amenities.length,
                    itemBuilder: (context, index) {
                      final amenity = amenities[index];
                      // print details of each amenity
                      log('Amenity Name: ${amenity.amenityName}');
                      log('Amenity Icon Path: ${amenity.amenityIconPath}');
                      log('Is Checked: ${amenity.isChecked}');

                      return AmenityObject(
                        amenityName: amenity.amenityName,
                        amenityIconPath: amenity.amenityIconPath,
                        isChecked: amenity.isChecked,
                        selectedAmenitiesProvider: selectedAmenitiesProvider,
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
