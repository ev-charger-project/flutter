import 'package:ev_charger/shared/data/data_source/remote/remote_storage_service.dart';

import '../data_models/suggestion_data_model.dart';

abstract class SuggestionDataSource {
  Future<List<SuggestionDataModel>> fetchSuggestionData(String searchString,
      [int? stationCount,
      List<String>? chargeType,
      int? outputMin,
      int? outputMax,
      List<String>? amenities,
      double? lat,
      double? long]);
}

class SuggestionRemoteDataSource implements SuggestionDataSource {
  final RemoteStorageService remoteStorageService;

  SuggestionRemoteDataSource(this.remoteStorageService);

  @override
  Future<List<SuggestionDataModel>> fetchSuggestionData(String searchString,
      [int? stationCount,
      List<String>? chargeType,
      int? outputMin,
      int? outputMax,
      List<String>? amenities,
      double? lat,
      double? long]) async {
    final data = await remoteStorageService.fetchSuggestion(
        searchString,
        stationCount,
        chargeType,
        outputMin,
        outputMax,
        amenities,
        lat,
        long); // Adjust fetchData method according to your service
    return data;
  }
}
