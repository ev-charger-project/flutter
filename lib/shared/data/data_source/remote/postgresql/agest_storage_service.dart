import 'package:ev_charger/repositories/amenity/data_models/amenity_data_model.dart';
import 'package:ev_charger/repositories/charge_type/data_models/charge_type_data_model.dart';
import 'package:ev_charger/repositories/favourite/data_models/favourite_data_model.dart';
import 'package:ev_charger/repositories/marker/data_models/charger_marker_data_model.dart';
import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';
import 'package:ev_charger/repositories/suggestion/data_models/suggestion_data_model.dart';
import 'package:ev_charger/shared/data/data_source/remote/remote_storage_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import '../../../../../repositories/route/data_models/route_data_model.dart';

class AgestStorageService extends RemoteStorageService {
  final Dio _dio = Dio();

  // static const uri = 'http://10.0.2.2:8000'; // localhost
  static const uri = 'http://ev-charger.zapto.org:4000'; // my server
  // static const uri = 'http://172.16.11.139:14000'; // agest internal server

  @override
  Future<LocationDataModel> fetchLocationData(String locationId) async {
    const url = '/api/v1/locations';

    try {
      final response = await _dio.get('$uri$url/$locationId');
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
      double screenCenterLat, double screenCenterLong, double radius,
      [int? stationCount,
      List<String>? chargeType,
      int? outputMin,
      int? outputMax,
      List<String>? amenities]) async {
    const baseUrl = '/api/v1/locations/search';
    final Map<String, dynamic> queryParams = {
      'lat': screenCenterLat,
      'lon': screenCenterLong,
      'radius': 15,
      'station_count': stationCount,
      'charger_type': chargeType,
      'power_output_gte': outputMin,
      'power_output_lte': outputMax,
      'amenities': amenities,
    };

    print("queryParams: $queryParams");


    final StringBuffer urlBuffer = StringBuffer('$uri$baseUrl?');
    queryParams.forEach((key, value) {
      if (value != null) {
        if (value is List) {
          for (var item in value) {
            urlBuffer.write('$key=${item}&');
          }
        } else {
          urlBuffer.write('$key=${value.toString()}&');
        }
      }
    });

    final String fullUrl =
        urlBuffer.toString().substring(0, urlBuffer.length - 1);

    try {
      final response = await _dio.get(fullUrl);
      print('Full fetchMarker URL: $fullUrl');

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
  Future<List<SuggestionDataModel>> fetchSuggestion(String searchString,
      [int? stationCount,
      List<String>? chargeType,
      int? outputMin,
      int? outputMax,
      List<String>? amenities,
      double? lat,
      double? long,
      ]) async {
    const baseUrl = '/api/v1/locations/search';
    final Map<String, dynamic> queryParams = {
      'query': searchString,
      'is_fuzzi': true,
      'station_count': stationCount,
      'charger_type': chargeType,
      'power_output_gte': outputMin,
      'power_output_lte': outputMax,
      'amenities': amenities,
    };

    if (lat != null && long != null) {
      queryParams['lat'] = lat;
      queryParams['lon'] = long;
    }

    final StringBuffer urlBuffer = StringBuffer('$uri$baseUrl?');
    queryParams.forEach((key, value) {
      if (value != null) {
        if (value is List) {
          for (var item in value) {
            urlBuffer.write('$key=${item}&');
          }
        } else {
          urlBuffer.write('$key=${value.toString()}&');
        }
      }
    });

    final String fullUrl =
        urlBuffer.toString().substring(0, urlBuffer.length - 1);

    try {
      final response = await _dio.get(fullUrl);

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
      final response = await _dio.get(uri + url, queryParameters: {
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
    const url = '/api/v1/power-plug-types';
    List<ChargeTypeDataModel> chargeTypes = [];

    try {
      int page = 1;
      bool hasMoreData = true;

      while (hasMoreData) {
        final response = await _dio.get(
          uri + url,
          queryParameters: {'page': page},
        );

        if (response.statusCode == 200) {
          final data = response.data;
          final founds = data['founds'] as List;
          print('Response is $founds');
          final fetchedChargeTypes = founds
              .map((item) =>
                  ChargeTypeDataModel.fromJson(item as Map<String, dynamic>))
              .toList();

          chargeTypes.addAll(fetchedChargeTypes);

          final totalCount = data['search_options']['total_count'] as int;

          if (chargeTypes.length >= totalCount) {
            hasMoreData = false;
          } else {
            page++;
          }
        } else {
          throw Exception('Error code: ${response.statusCode}');
        }
      }
    } catch (e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }

    return chargeTypes;
  }

  @override
  Future<RouteDataModel> fetchRoute(double userLat, double userLong,
      double destinationLat, double destinationLong) async {
    const url = '/api/v1/locations/location-on-route';

    try {
      final response = await _dio.get(uri + url, queryParameters: {
        'start_lat': userLat,
        'start_long': userLong,
        'end_lat': destinationLat,
        'end_long': destinationLong,
      });
      if (response.statusCode == 200) {
        final dynamic responseData = response.data;
        final result = RouteDataModel.fromJson(responseData);
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

  //   final PolylinePoints polylinePoints = PolylinePoints();
  //   final PolylineResult result =
  //       await polylinePoints.getRouteBetweenCoordinates(
  //     googleApiKey: 'AIzaSyAGYJacplt2I8syt0aY4GXfSNXhKdsXUgM',
  //     request: PolylineRequest(
  //         origin: PointLatLng(userLat, userLong),
  //         destination: PointLatLng(destinationLat, destinationLong),
  //         mode: TravelMode.driving),
  //   );
  //
  //   if (result.points.isNotEmpty) {
  //     final routePoints = result.points
  //         .map(
  //             (point) => RoutePoint(lat: point.latitude, long: point.longitude))
  //         .toList();
  //     return RouteDataModel(route: routePoints, chargers: [], hashcode: '');
  //   } else {
  //     return RouteDataModel(route: [], chargers: [], hashcode: '');
  //   }
  // }

  @override
  Future<List<LocationDataModel>> fetchNearby(
      double lat, double long, double radius) async {
    const url = '/api/v1/locations/nearby';

    try {
      final response = await _dio.get(uri + url, queryParameters: {
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

  @override
  Future<List<FavouriteDataModel>> fetchFav(String token, String id) async {
    const url = '/api/v1/user-favorite';
    int currentPage = 1;
    bool hasMoreData = true;
    List<FavouriteDataModel> allLocations = [];
    print("fetchFav: $token, $id");
    try {
      // while (hasMoreData) {
      final response = await _dio.get(
        uri + url,
        queryParameters: {
          'user_id': id,
          // 'page': currentPage,
        },
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );
      print("response fetch: $response");
      if (response.statusCode == 200) {
        final data = response.data['founds'] as List;
        if (data.isEmpty) {
          hasMoreData = false;
        } else {
          final locations =
              data.map((item) => FavouriteDataModel.fromJson(item)).toList();
          allLocations.addAll(locations);

          currentPage++;
        }
      } else {
        throw Exception('Error code: ${response.statusCode}');
      }
      // }
      return allLocations;
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
  Future<void> createFav(String locationId, String access_token) async {
    const url = '/api/v1/user-favorite';
    print("createUserFav api: $access_token, $locationId");
    print(uri + url);
    try {
      final response = await _dio.post(uri + url,
          data: {
            'location_id': locationId,
          },
          options: Options(
            headers: {'Authorization': 'Bearer $access_token'},
          ));
      print("create response: $response");
      if (response.statusCode != 201) {
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
  Future<void> deleteFav(String favId, String access_token) async {
    const url = '/api/v1/user-favorite';
    print('test delete: $uri$url/$favId');
    try {
      final response = await _dio.delete('$uri$url/$favId',
          options: Options(
            headers: {'Authorization': 'Bearer $access_token'},
          ));
      print("delete response: $response");
      if (response.statusCode != 200) {
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
  Future<List<AmenityDataModel>> fetchAmenityData() async {
    const url = '/api/v1/amenities';
    const mediaUrl = '/api/v1/media/';
    int currentPage = 1;
    bool hasMoreData = true;
    List<AmenityDataModel> allAmenities = [];
    try {
      // while (hasMoreData) {
      final response = await _dio.get(
        uri + url,
      );
      print("response fetch: $response");
      if (response.statusCode == 200) {
        final data = response.data['founds'] as List;
        if (data.isEmpty) {
          hasMoreData = false;
        } else {
          final amenities = data.map((item) {
            final imageFileName = item['image_url'];
            if (item['image_url'] != null) {
              item['image_url'] = "$uri/api/v1/media/$imageFileName";
            }
            print(item['image_url']);
            return AmenityDataModel.fromJson(item);
          }).toList();
          allAmenities.addAll(amenities);

          currentPage++;
        }
      } else {
        throw Exception('Error code: ${response.statusCode}');
      }
      // }
      return allAmenities;
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
