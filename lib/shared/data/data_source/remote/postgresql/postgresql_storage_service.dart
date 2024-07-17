import 'dart:math';

import 'package:ev_charger/repositories/marker/data_models/charger_marker_data_model.dart';
import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';
import 'package:ev_charger/repositories/suggestion/data_models/suggestion_data_model.dart';
import 'package:ev_charger/shared/data/data_source/remote/remote_storage_service.dart';
import 'package:dio/dio.dart';

class PostgresqlStorageService extends RemoteStorageService {
  final Dio _dio = Dio();

  @override
  Future<LocationDataModel> fetchLocationData(String locationId) async {
    const url = 'http://172.16.11.139:14000/api/v1/location_details';
    throw UnimplementedError();
    /*try {
      final response = await _dio.get(url, queryParameters: {
        'id': locationId,
      });
      if (response.statusCode == 200) {
        return response.data.map((item) =>
            ChargerMarkerDataModel.fromJson(item as Map<String, dynamic>));
      } else {
        throw Exception('Failed to load markers using DataModel');
      }
    } catch (e) {
      throw Exception('Failed to load markers: $e');
    }*/
  }

  @override
  Future<List<ChargerMarkerDataModel>> fetchMarker(
      double userLat, double userLong, double radius) async {
    const url = 'http://172.16.11.139:14000/api/v1/locations/by_radius';

    try {
      final response = await _dio.get(url, queryParameters: {
        'user_lat': userLat,
        'user_long': userLong,
        'radius': radius,
      });
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((item) =>
                ChargerMarkerDataModel.fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Failed to load markers using DataModel');
      }
    } catch (e) {
      throw Exception('Failed to load markers: $e');
    }
  }

  @override
  Future<List<SuggestionDataModel>> fetchSuggestion(String searchString) async {
    await Future.delayed(Duration(seconds: 1));
    return const [
      SuggestionDataModel(
        locationId: '1',
        locationName: 'Lakeside Park',
        street: 'Park Ave',
        district: 'Central',
        city: 'Springfield',
        country: 'Freedonia',
      ),
      SuggestionDataModel(
        locationId: '2',
        locationName: 'Mountain View',
        street: 'Summit Rd',
        district: 'North',
        city: 'Hilltown',
        country: 'Freedonia',
      ),
      SuggestionDataModel(
        locationId: '3',
        locationName: 'Riverbank Plaza',
        street: 'River Rd',
        district: 'Eastside',
        city: 'Rivertown',
        country: 'Freedonia',
      ),
      SuggestionDataModel(
        locationId: '4',
        locationName: 'Oceanview Terrace',
        street: 'Coastline Dr',
        district: 'Seaside',
        city: 'Beachville',
        country: 'Freedonia',
      ),
      SuggestionDataModel(
        locationId: '5',
        locationName: 'Greenwood Park',
        street: 'Forest Ln',
        district: 'South',
        city: 'Greenville',
        country: 'Freedonia',
      ),
      SuggestionDataModel(
        locationId: '6',
        locationName: 'Sunnyvale Courts',
        street: 'Sunshine Blvd',
        district: 'Westside',
        city: 'Sunnyvale',
        country: 'Freedonia',
      ),
      SuggestionDataModel(
        locationId: '7',
        locationName: 'Hillcrest Estate',
        street: 'Hilltop Rd',
        district: 'Uptown',
        city: 'Highland',
        country: 'Freedonia',
      ),
      SuggestionDataModel(
        locationId: '8',
        locationName: 'Meadowlands Square',
        street: 'Meadow St',
        district: 'Suburban',
        city: 'Meadowville',
        country: 'Freedonia',
      ),
      SuggestionDataModel(
        locationId: '9',
        locationName: 'Canyon Edge',
        street: 'Canyon Way',
        district: 'Outskirts',
        city: 'Cliffside',
        country: 'Freedonia',
      ),
      SuggestionDataModel(
        locationId: '10',
        locationName: 'Desert Springs',
        street: 'Oasis Rd',
        district: 'Rural',
        city: 'Dustville',
        country: 'Freedonia',
      ),
    ];
  }
}
