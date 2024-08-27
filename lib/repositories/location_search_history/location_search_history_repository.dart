import 'data_models/location_search_history_data_model.dart';

abstract class LocationSearchHistoryRepository {
  Future<List<LocationSearchHistoryDataModel>> fetchLocationSearchHistoryData(
      String token, String id);
  Future<void> createLocationSearchHistoryData(
      String locationId, String userId);
  Future<void> deleteLocationSearchHistoryData(String historyId, String userId);
}
