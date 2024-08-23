import 'package:ev_charger/repositories/amenity/data_models/amenity_data_model.dart';
import 'package:ev_charger/repositories/marker/data_models/charger_marker_data_model.dart';
import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';
import 'package:ev_charger/repositories/suggestion/data_models/suggestion_data_model.dart';

import '../../../../repositories/charge_type/data_models/charge_type_data_model.dart';
import '../../../../repositories/favourite/data_models/favourite_data_model.dart';
import '../../../../repositories/route/data_models/route_data_model.dart';

abstract class RemoteStorageService {
  Future<LocationDataModel> fetchLocationData(String locationId);

  Future<RouteDataModel> fetchRoute(double userLat, double userLong,
      double destinationLat, double destinationLong);

  Future<List<LocationDataModel>> fetchNearby(
      double lat, double long, double radius);

  Future<List<ChargerMarkerDataModel>> fetchMarker(
      double screenCenterLat, double screenCenterLong, double radius,
      [int? stationCount,
      List<String>? chargeType,
      int? outputMin,
      int? outputMax,
      List<String>? amenities]);

  Future<List<ChargeTypeDataModel>> fetchChargeTypeData();

  Future<List<SuggestionDataModel>> fetchSuggestion(String searchString,
      [int? stationCount,
      List<String>? chargeType,
      int? outputMin,
      int? outputMax,
      List<String>? amenities,
      double? lat,
      double? long]);

  Future<List<String>> fetchDistanceAndDuration(
      double userLat, double userLong, double desLat, double desLong);


  Future<List<FavouriteDataModel>> fetchFav(String token, String id);
  Future<List<AmenityDataModel>> fetchAmenityData();
  Future<void> createFav(String locationId, String access_token);
  Future<void> deleteFav(String favId, String access_token);
}
