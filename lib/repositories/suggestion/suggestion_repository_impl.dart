import 'package:ev_charger/repositories/suggestion/suggestion_repository.dart';

import 'data_sources/suggestion_remote_data_source.dart';
import 'entities/suggestion_entity.dart';

class SuggestionRepositoryImpl extends SuggestionRepository {
  SuggestionRepositoryImpl(this.remoteDataSource);

  final SuggestionRemoteDataSource remoteDataSource;

  @override
  Future<List<SuggestionEntity>> fetchSuggestionsData(
<<<<<<< HEAD
      String searchString, int? stationCount, [double? lat, double? long]) async {
    final suggestionDataModelResult =
        await remoteDataSource.fetchSuggestionData(searchString, stationCount, lat, long);
=======
      String searchString, int? stationCount) async {
    final suggestionDataModelResult =
        await remoteDataSource.fetchSuggestionData(searchString, stationCount);
>>>>>>> cf568d8 (add stationCount filter into API)
    final result = SuggestionMapper().toEntityList(suggestionDataModelResult);
    return result;
  }
}
