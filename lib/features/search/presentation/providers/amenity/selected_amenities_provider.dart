import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../widgets/amenity_object.dart';

final selectedAmenitiesProvider = StateProvider<List<AmenityObject>>((ref) {
  List<AmenityObject> selectedAmenities = [];
  /*ref.watch(availableAmenitiesProvider).whenData((value) {
    selectedAmenities = value.where((amenity) => amenity.isChecked).toList();
  });*/
  return selectedAmenities;
});
