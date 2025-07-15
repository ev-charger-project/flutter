import 'package:ev_charger/repositories/filter/filter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterProvider extends StateNotifier<FilterEntity> {
  FilterProvider()
      : super(const FilterEntity(
            station_count: 0,
            charge_type: [],
            output_min: 0,
            output_max: 360,
            amenities: []));

  void updateFilter(FilterEntity newFilter) {
    state = newFilter;
  }

/*void resetFilter() {
    state = const FilterEntity(
        station_count: 0, charge_type: [], output_min: 0, output_max: 360);
  }*/
}

final filterProvider =
    StateNotifierProvider<FilterProvider, FilterEntity>((ref) {
  return FilterProvider();
});
