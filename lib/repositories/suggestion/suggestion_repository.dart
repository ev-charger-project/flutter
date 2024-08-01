import 'entities/suggestion_entity.dart';

abstract class SuggestionRepository {
<<<<<<< HEAD
  Future<List<SuggestionEntity>> fetchSuggestionsData(String searchString, int? stationCount, double? lat, double? long);
=======
  Future<List<SuggestionEntity>> fetchSuggestionsData(
      String searchString, int? stationCount);
>>>>>>> cf568d8 (add stationCount filter into API)
}
