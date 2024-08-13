import 'package:ev_charger/features/search/domain/providers/amenity_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../widgets/amenity_object.dart';

final initialAmenitiesProvider =
    FutureProvider<List<AmenityObject>>((ref) async {
  /*final amenityList = await ref.watch(amenityProvider.future);
  return amenityList
      .map((i) => AmenityObject(
            amenityName: i.amenity,
            amenityIconPath: i.amenity_image_url,
            isChecked: false,
          ))
      .toList();*/

  await Future.delayed(Duration(seconds: 2));
  final exampleAmenities = [
    AmenityObject(
      amenityName: 'Dining',
      amenityIconPath: 'assets/icons/dining.svg',
      isChecked: false,
    ),
    AmenityObject(
      amenityName: 'Restrooms',
      amenityIconPath: 'assets/icons/restrooms.svg',
      isChecked: true,
    ),
    AmenityObject(
      amenityName: 'Shopping',
      amenityIconPath: 'assets/icons/shopping.svg',
      isChecked: false,
    ),
    AmenityObject(
      amenityName: 'Lodging',
      amenityIconPath: 'assets/icons/lodging.svg',
      isChecked: true,
    ),
  ];
  return exampleAmenities;
});

final availableAmenitiesProvider =
    FutureProvider<List<AmenityObject>>((ref) async {
  List<AmenityObject> availableAmenities = [];
  ref.watch(initialAmenitiesProvider).whenData((value) {
    availableAmenities = value;
  });
  return availableAmenities;
});
