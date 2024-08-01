import 'package:ev_charger/repositories/suggestion/entities/suggestion_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/domain/providers/suggestion/suggestion_repository_provider.dart';
import '../../../search/presentation/providers/station_count/station_count_value_provider.dart';
import '../../presentation/providers/to_search_provider.dart';

final RouteToProvider = FutureProvider<List<SuggestionEntity>>((ref) async {
  final suggestionRepository = ref.read(suggestionRepositoryProvider);
  final suggestionQuery = ref.watch(ToSearchProvider);
  final stationCount = ref.watch(stationCountValueProvider);

  final suggestionsData = await suggestionRepository.fetchSuggestionsData(
      suggestionQuery, stationCount);

  return suggestionsData;
});
