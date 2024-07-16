import 'entities/suggestion_entity.dart';

abstract class SuggestionRepository {
  Future<List<SuggestionEntity>> fetchSuggestionsData(String locationId);
}
