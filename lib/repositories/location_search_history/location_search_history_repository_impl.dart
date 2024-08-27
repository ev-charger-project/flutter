import 'dart:developer';

import 'data_models/location_search_history_data_model.dart';
import 'data_sources/location_search_history_remote_data_source.dart';
import 'location_search_history_repository.dart';

class LocationSearchHistoryRepositoryImpl
    extends LocationSearchHistoryRepository {
  LocationSearchHistoryRepositoryImpl(this.remoteDataSource);
  final LocationSearchHistoryRemoteDataSource remoteDataSource;

  @override
  Future<List<LocationSearchHistoryDataModel>> fetchLocationSearchHistoryData(
      String token, String id) async {
    final locationSearchHistoryDataModelResult =
        await remoteDataSource.fetchLocationSearchHistoryData(token, id);
    return locationSearchHistoryDataModelResult;
  }

  @override
  Future<void> createLocationSearchHistoryData(
      String locationId, String accessToken) async {
    log("create favorite: $locationId, $accessToken");
    await remoteDataSource.createLocationSearchHistoryData(
        locationId, accessToken);
  }

  @override
  Future<void> deleteLocationSearchHistoryData(
      String historyId, String accessToken) async {
    log("delete favorite: $historyId, $accessToken");
    await remoteDataSource.deleteLocationSearchHistoryData(
        historyId, accessToken);
  }
}
