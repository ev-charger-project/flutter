import 'package:ev_charger/repositories/suggestion/suggestion_repository.dart';

import 'data_sources/suggestion_remote_data_source.dart';
import 'entities/suggestion_entity.dart';

class SuggestionRepositoryImpl extends SuggestionRepository {
  SuggestionRepositoryImpl(this.remoteDataSource);

  final SuggestionRemoteDataSource remoteDataSource;

  @override
  Future<List<SuggestionEntity>> fetchSuggestionsData(String searchString,
      [int? stationCount,
      List<String>? chargeType,
      int? outputMin,
      int? outputMax,
      double? lat,
      double? long]) async {
    final suggestionDataModelResult =
        await remoteDataSource.fetchSuggestionData(searchString, stationCount,
            chargeType, outputMin, outputMax, lat, long);
    final result = SuggestionMapper().toEntityList(suggestionDataModelResult);
    return result;
  }
}
