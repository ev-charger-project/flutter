import 'dart:developer';

import 'package:ev_charger/repositories/suggestion/suggestion_repository.dart';

import 'data_sources/suggestion_remote_data_source.dart';
import 'entities/suggestion_entity.dart';

class SuggestionRepositoryImpl extends SuggestionRepository {
  SuggestionRepositoryImpl(this.remoteDataSource);

  final SuggestionRemoteDataSource remoteDataSource;

  @override
  Future<List<SuggestionEntity>> fetchSuggestionsData(
    String searchString, [
    int? stationCount,
    List<String>? chargeType,
    int? outputMin,
    int? outputMax,
    List<String>? amenities,
    double? lat,
    double? long,
  ]) async {
    final suggestionDataModelResult =
        await remoteDataSource.fetchSuggestionData(
            searchString,
            stationCount ?? 0,
            chargeType ?? [],
            outputMin ?? 0,
            outputMax ?? 360,
            amenities,
            lat,
            long);
    final result = SuggestionMapper().toEntityList(suggestionDataModelResult);
    log('searchString: $searchString');
    log('stationCount: $stationCount');
    log('chargeType: $chargeType');
    log('outputMin: $outputMin');
    log('outputMax: $outputMax');
    log('amenities: $amenities');
    log('lat: $lat');
    log('long: $long');

    return result;
  }
}
