import 'entities/suggestion_entity.dart';

abstract class SuggestionRepository {
  Future<List<SuggestionEntity>> fetchSuggestionsData(String searchString,
      [int? stationCount,
      List<String>? chargeType,
      int? outputMin,
      int? outputMax,
      List<String>? amenities,
      double? lat,
      double? long]);
}
