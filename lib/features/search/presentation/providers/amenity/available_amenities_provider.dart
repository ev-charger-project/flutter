import 'package:ev_charger/features/search/domain/providers/amenity_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../widgets/amenity_object.dart';

final initialAmenitiesProvider =
    FutureProvider<List<AmenityObject>>((ref) async {
  final amenityList = await ref.watch(amenityProvider.future);
  return amenityList
      .map((i) => AmenityObject(
            amenityName: i.amenity,
            amenityIconPath: i.imageUrl,
            isChecked: false,
          ))
      .toList();
});

/*final availableAmenitiesProvider =
    StateNotifierProvider<AmenityNotifier, List<AmenityObject>>((ref) {
  return AmenityNotifier();
});

class AmenityNotifier extends StateNotifier<List<AmenityObject>> {
  AmenityNotifier() : super([]);

  void updateAmenities(List<AmenityObject> amenities) {
    state = amenities;
  }
}*/

final availableAmenitiesProvider = StateProvider<List<AmenityObject>>((ref) {
  List<AmenityObject> availableAmenities = [];
  ref.watch(initialAmenitiesProvider).whenData((value) {
    availableAmenities = value;
  });
  return availableAmenities;
});
