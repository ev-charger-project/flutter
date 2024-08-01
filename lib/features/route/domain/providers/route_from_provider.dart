import 'package:ev_charger/features/search/presentation/providers/station_count/station_count_value_provider.dart';
import 'package:ev_charger/repositories/suggestion/entities/suggestion_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/domain/providers/suggestion/suggestion_repository_provider.dart';
import '../../presentation/providers/from_search_provider.dart';

final RouteFromProvider = FutureProvider<List<SuggestionEntity>>((ref) async {
  final suggestionRepository = ref.read(suggestionRepositoryProvider);
  final suggestionQuery = ref.watch(FromSearchProvider);
  final stationCount = ref.watch(stationCountValueProvider);

  final suggestionsData = await suggestionRepository.fetchSuggestionsData(
      suggestionQuery, stationCount);

  return suggestionsData;
});
