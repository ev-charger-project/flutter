import 'package:ev_charger/features/splash/widgets/dots_circular_progress_painter_widget.dart';
import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/core/localization/localization.dart';
import '../providers/amenity/available_amenities_provider.dart';
import 'amenity_object.dart';

class Amenity extends ConsumerStatefulWidget {
  const Amenity({super.key});

  @override
  ConsumerState createState() => _AmenityState();
}

class _AmenityState extends ConsumerState<Amenity> {
  final Set<int> selectedIndexes = {};

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final amenitiesAsyncValue = ref.watch(availableAmenitiesProvider);

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
            amenitiesAsyncValue.when(
              data: (amenities) => GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.5,
                ),
                itemCount: amenities.length,
                itemBuilder: (context, index) {
                  final amenity = amenities[index];
                  return AmenityObject(
                    amenityName: amenity.amenityName,
                    amenityIconPath: amenity.amenityIconPath,
                    isChecked: selectedIndexes.contains(index),
                  );
                },
              ),
              loading: () => Center(
                child: DotsCircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                  numberOfDots: 8,
                ),
              ),
              error: (error, stack) => Center(
                child: Text('Error: $error'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
import 'package:ev_charger/features/splash/widgets/dots_circular_progress_painter_widget.dart';
import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/core/localization/localization.dart';
import '../providers/amenity/available_amenities_provider.dart';
import 'amenity_object.dart';

class Amenity extends ConsumerStatefulWidget {
  const Amenity({super.key});

  @override
  ConsumerState createState() => _AmenityState();
}

class _AmenityState extends ConsumerState<Amenity> {
  */
/*final List<Map<String, dynamic>> amenities = [
    {'icon': Icons.restaurant, 'text': 'Dining'},
    {'icon': Icons.family_restroom, 'text': 'Restrooms'},
    {'icon': Icons.shopping_bag, 'text': 'Shopping'},
    {'icon': Icons.hotel, 'text': 'Lodging'},
    {'icon': Icons.park, 'text': 'Park'},
    {'icon': Icons.local_grocery_store, 'text': 'Grocery'},
    {'icon': Icons.wifi, 'text': 'Wi-Fi'},
    {'icon': Icons.local_parking, 'text': 'Parking'},
    {'icon': Icons.hiking, 'text': 'Hiking'},
    {'icon': Icons.local_cafe, 'text': 'Cafe'},
    {'icon': Icons.electric_car, 'text': 'Free Charging'},
  ];*/ /*


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
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.5,
              ),
              itemCount: amenities.length,
              itemBuilder: (context, index) {
                final amenity = amenities[index];
                return AmenityObject(
                  amenityName: amenity.amenityName,
                  amenityIconPath: amenity.amenityIconPath,
                  isChecked: amenity.isChecked,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
*/
