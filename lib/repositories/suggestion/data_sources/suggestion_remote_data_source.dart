import 'package:ev_charger/shared/data/data_source/remote/remote_storage_service.dart';

import '../data_models/suggestion_data_model.dart';

abstract class SuggestionDataSource {
  Future<List<SuggestionDataModel>> fetchSuggestionData(String locationId);
}

class SuggestionRemoteDataSource implements SuggestionDataSource {
  final RemoteStorageService remoteStorageService;

  SuggestionRemoteDataSource(this.remoteStorageService);

  @override
  Future<List<SuggestionDataModel>> fetchSuggestionData(
      String searchString) async {
    final data = await remoteStorageService.fetchSuggestion(
        searchString); // Adjust fetchData method according to your service
    return data;
  }
}
