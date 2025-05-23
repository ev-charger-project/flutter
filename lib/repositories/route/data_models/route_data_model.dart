import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_data_model.freezed.dart';
part 'route_data_model.g.dart';

@freezed
class RouteDataModel with _$RouteDataModel {
  const factory RouteDataModel({
    @Default([]) @JsonKey(name: 'coordinates') List<RoutePoint> route,
    @Default([]) @JsonKey(name: 'locations') List<Charger> chargers,
    @Default('') @JsonKey(name: 'overview_polyline') String hashcode,
  }) = _RouteDataModel;

  factory RouteDataModel.fromJson(Map<String, dynamic> json) =>
      _$RouteDataModelFromJson(json);
}

@freezed
class RoutePoint with _$RoutePoint {
  const factory RoutePoint({
    @JsonKey(name: 'lat') required double lat,
    @JsonKey(name: 'lng') required double long,
  }) = _RoutePoint;

  factory RoutePoint.fromJson(Map<String, dynamic> json) =>
      _$RoutePointFromJson(json);
}

@freezed
class Charger with _$Charger {
  const factory Charger({
    required String id,
    @JsonKey(name: 'latitude') required double lat,
    @JsonKey(name: 'longitude') required double long,
  }) = _Charger;

  factory Charger.fromJson(Map<String, dynamic> json) =>
      _$ChargerFromJson(json);
}
