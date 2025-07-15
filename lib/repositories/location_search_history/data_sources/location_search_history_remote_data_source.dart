import '../../../shared/data/data_source/remote/remote_storage_service.dart';
import '../data_models/location_search_history_data_model.dart';

abstract class LocationSearchHistoryDataSource {
  Future<List<LocationSearchHistoryDataModel>> fetchLocationSearchHistoryData(
      String token, String userId);
  Future<void> createLocationSearchHistoryData(
      String locationId, String accessToken);
  Future<void> deleteLocationSearchHistoryData(
      String historyId, String accessToken);
}

class LocationSearchHistoryRemoteDataSource
    extends LocationSearchHistoryDataSource {
  LocationSearchHistoryRemoteDataSource(this.remoteStorageService);

  final RemoteStorageService remoteStorageService;

  @override
  Future<List<LocationSearchHistoryDataModel>> fetchLocationSearchHistoryData(
      String token, String userId) async {
    return await remoteStorageService.fetchLocationSearchHistoryData(
        token, userId);
  }

  @override
  Future<void> createLocationSearchHistoryData(
      String locationId, String accessToken) async {
    return await remoteStorageService.createLocationSearchHistoryData(
        locationId, accessToken);
  }

  @override
  Future<void> deleteLocationSearchHistoryData(
      String historyId, String accessToken) async {
    return await remoteStorageService.deleteLocationSearchHistoryData(
        historyId, accessToken);
  }
}
