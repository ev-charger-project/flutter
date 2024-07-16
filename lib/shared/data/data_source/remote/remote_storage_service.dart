import 'package:ev_charger/repositories/marker/data_models/charger_marker_data_model.dart';
import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';
import 'package:ev_charger/repositories/suggestion/data_models/suggestion_data_model.dart';

abstract class RemoteStorageService {
  Future<LocationDataModel> fetchLocationData(String locationId);

  Future<List<ChargerMarkerDataModel>> fetchMarker(
      String userLat, String userLong, int radius);

  Future<List<SuggestionDataModel>> fetchSuggestion(String searchString);
}
