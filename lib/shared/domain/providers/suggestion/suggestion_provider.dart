import 'package:ev_charger/repositories/suggestion/entities/suggestion_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../features/search/domain/providers/search_query_provider.dart';
import 'suggestion_repository_provider.dart';

final suggestionProvider = FutureProvider<List<SuggestionEntity>>((ref) async {
  final suggestionRepository = ref.read(suggestionRepositoryProvider);
  final suggestionQuery = ref.watch(SearchQueryProvider);

  final suggestionsData =
      await suggestionRepository.fetchSuggestionsData(suggestionQuery);

  return suggestionsData;
});
