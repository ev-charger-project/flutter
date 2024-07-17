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
    await Future.delayed(Duration(seconds: 1));
    throw UnimplementedError();}

  @override
  Future<List<ChargerMarkerDataModel>> fetchMarker(double userLat, double userLong, double radius) async {
    const url = 'http://172.16.11.139:14000/api/v1/locations/by_radius';

    try {
      final response = await _dio.get(url, queryParameters: {
        'user_lat': userLat,
        'user_long': userLong,
        'radius': radius,
      });
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((item) => ChargerMarkerDataModel.fromJson(item as Map<String, dynamic>))
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
      /*SuggestionDataModel(
        locationId: 'Main Street',
        locationName: 'Main',
        street: 'Main street',
        district: 'q1',
        city: 'city A',
        country: 'country A',
      ),
      SuggestionDataModel(
        locationId: 'Elm Street',
        locationName: 'Elm',
        street: 'Main street',
        district: 'q2',
        city: 'city B',
        country: 'country B',
      ),
      SuggestionDataModel(
        locationId: 'Pine Street',
        locationName: 'Pine',
        street: 'Pine street',
        district: 'q3',
        city: 'city C',
        country: 'country C',
      ),
      SuggestionDataModel(
        locationId: 'Oak Street',
        locationName: 'Oak',
        street: 'Oak street',
        district: 'q4',
        city: 'city D',
        country: 'country D',
      ),
      SuggestionDataModel(
        locationId: 'Maple Street',
        locationName: 'Maple',
        street: 'Maple street',
        district: 'q5',
        city: 'city E',
        country: 'country E',
      ),*/
    ];
  }
}
