import 'package:ev_charger/repositories/charge_type/data_models/charge_type_data_model.dart';
import 'package:ev_charger/repositories/marker/data_models/charger_marker_data_model.dart';
import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';
import 'package:ev_charger/repositories/suggestion/data_models/suggestion_data_model.dart';
import 'package:ev_charger/shared/data/data_source/remote/remote_storage_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';

import '../../../../../repositories/route/data_models/route_data_model.dart';

class AgestStorageService extends RemoteStorageService {
  final Dio _dio = Dio();

  @override
  Future<LocationDataModel> fetchLocationData(String locationId) async {
    const url = 'http://172.16.11.139:14000/api/v1/locations';

    try {
      final response = await _dio.get('$url/$locationId');
      if (response.statusCode == 200) {
        final dynamic responseData = response.data;
        final result = LocationDataModel.fromJson(responseData);
        return result;
      } else {
        throw Exception('Error code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
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
        throw Exception('Error code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }

  @override
  Future<List<SuggestionDataModel>> fetchSuggestion(String searchString, double? lat, double? long) async {
    const url = 'http://172.16.11.139:14000/api/v1/locations/search';

    try {
      final response = await _dio.get(url, queryParameters: {
        'query': searchString,
        'is_fuzzi': true,
        'lat': lat,
        'long': long
      });
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((item) =>
                SuggestionDataModel.fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Error code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }

  @override
  Future<List<String>> fetchDistanceAndDuration(
      double userLat, double userLong, double desLat, double desLong) async {
    const apiKey = 'AIzaSyAGYJacplt2I8syt0aY4GXfSNXhKdsXUgM';
    const url =
        'https://maps.googleapis.com/maps/api/distancematrix/json?departure_time=now&key=$apiKey';
    try {
      final response = await _dio.get(url, queryParameters: {
        'origins': '$userLat,$userLong',
        'destinations': '$desLat,$desLong',
      });
      if (response.statusCode == 200) {
        List<String> result = [
          response.data['rows'][0]['elements'][0]['distance']['text'],
          '${response.data['rows'][0]['elements'][0]['duration_in_traffic']['value'] ~/ 60} mins',
        ];
        return result;
      } else {
        throw Exception('Error code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }

  @override
  Future<List<ChargeTypeDataModel>> fetchChargeTypeData() async {
    const url = 'http://172.16.11.139:14000/api/v1/power-plug-types/unique-types';

    try {
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((item) =>
            ChargeTypeDataModel.fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Error code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }



  @override
  Future<RouteDataModel> fetchRoute(double userLat, double userLong, double destinationLat, double destinationLong) async {
    final PolylinePoints polylinePoints = PolylinePoints();
    final PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleApiKey: 'AIzaSyAGYJacplt2I8syt0aY4GXfSNXhKdsXUgM',
      request: PolylineRequest(
          origin: PointLatLng(userLat, userLong),
          destination: PointLatLng(destinationLat, destinationLong),
          mode: TravelMode.driving),
    );

    if (result.points.isNotEmpty) {
      final routePoints = result.points.map((point) => RoutePoint(lat: point.latitude, long: point.longitude)).toList();
      return RouteDataModel(route: routePoints, chargers: []);
    } else {
      return RouteDataModel(route: [], chargers: []);
    }
  }

  @override
  Future<List<LocationDataModel>> fetchNearby(double lat, double long, double radius) async {
    const url = 'http://172.16.11.139:14000/api/v1/locations/nearby';

    try {
      final response = await _dio.get(url, queryParameters: {
        'user_lat': lat,
        'user_long': long,
        'radius': radius,
      });
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((item) =>
            LocationDataModel.fromJson(item as Map<String, dynamic>))
            .toList();

      } else {
        throw Exception('Error code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }
  }

