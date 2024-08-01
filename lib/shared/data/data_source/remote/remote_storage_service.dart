import 'package:ev_charger/repositories/marker/data_models/charger_marker_data_model.dart';
import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';
import 'package:ev_charger/repositories/suggestion/data_models/suggestion_data_model.dart';
import '../../../../repositories/charge_type/data_models/charge_type_data_model.dart';
import '../../../../repositories/route/data_models/route_data_model.dart';

abstract class RemoteStorageService {
  Future<LocationDataModel> fetchLocationData(String locationId);

  Future<RouteDataModel> fetchRoute(double userLat, double userLong,double destinationLat, double destinationLong);

  Future<List<LocationDataModel>> fetchNearby(double lat, double long, double radius);

  Future<List<ChargerMarkerDataModel>> fetchMarker(
      double userLat, double userLong, double radius);

  Future<List<ChargeTypeDataModel>> fetchChargeTypeData();


  Future<List<SuggestionDataModel>> fetchSuggestion(String searchString, int? stationCount, double? lat, double? long);

  Future<List<String>> fetchDistanceAndDuration(
      double userLat, double userLong, double desLat, double desLong);
}
