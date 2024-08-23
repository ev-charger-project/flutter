import 'package:ev_charger/features/search/presentation/providers/amenity/available_amenities_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedAmenitiesNotifier extends StateNotifier<int> {
  SelectedAmenitiesNotifier(this.ref) : super(0);
  final Ref ref;

  void updateSelectedAmenities() {
    final filteredAmenities = ref.read(filteredAmenitiesProvider);
    state = filteredAmenities.where((amenity) => amenity.isChecked).length;
  }
}

final selectedAmenitiesProvider = StateNotifierProvider<SelectedAmenitiesNotifier, int>(
        (ref) => SelectedAmenitiesNotifier(ref));
