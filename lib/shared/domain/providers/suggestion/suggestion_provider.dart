import 'package:ev_charger/features/search/presentation/providers/filter_provider.dart';
import 'package:ev_charger/repositories/suggestion/entities/suggestion_entity.dart';
import 'package:ev_charger/shared/domain/providers/location/user_location_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../features/search/domain/providers/search_query_provider.dart';
import 'suggestion_repository_provider.dart';

final suggestionProvider = FutureProvider<List<SuggestionEntity>>((ref) async {
  final suggestionRepository = ref.read(suggestionRepositoryProvider);
  final suggestionQuery = ref.watch(SearchQueryProvider);
  final filter = ref.watch(filterProvider);

  final userLocation = ref.watch(userLocationProvider);
  final double? lat;
  final double? long;
  if (userLocation != null) {
    lat = userLocation.latitude;
    long = userLocation.longitude;
  } else {
    lat = null;
    long = null;
  }

  final stationCount = filter.station_count;
  final chargeType = filter.charge_type;
  final outputMin = filter.output_min;
  final outputMax = filter.output_max;
  final amenities = filter.amenities;


  final suggestionsData = await suggestionRepository.fetchSuggestionsData(
      suggestionQuery,
      stationCount,
      chargeType,
      outputMin,
      outputMax,
      amenities,
      lat,
      long);

  return suggestionsData;
});
