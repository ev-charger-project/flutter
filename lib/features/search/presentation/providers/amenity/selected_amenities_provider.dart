import 'package:ev_charger/features/search/presentation/providers/amenity/available_amenities_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../widgets/amenity_object.dart';

final selectedAmenitiesInitializerProvider =
FutureProvider<List<AmenityObject>>((ref) async {
  final selectedAmenities = ref.watch(availableAmenitiesProvider.notifier);
  // Initialize selectedAmenities with the data from availableAmenities
  return selectedAmenities.state
      .map((amenity) => AmenityObject(
    amenityName: amenity.amenityName,
    amenityIconPath: amenity.amenityIconPath,
    isChecked: false,
  ))
      .toList();
});


final selectedAmenitiesProvider = StateProvider<List<AmenityObject>>((ref) {
  List<AmenityObject> selectedAmenities = [];
  ref.watch(selectedAmenitiesInitializerProvider).whenData((value) {
    value.sort((a, b) {
      int amenityComparison = a.amenityName.compareTo(b.amenityName);
      if (amenityComparison != 0) {
        return amenityComparison;
      } else {
        return a.amenityName.compareTo(b.amenityName);
      }
    });
    selectedAmenities = value;
  });
  print(selectedAmenities);
  return selectedAmenities;
});
