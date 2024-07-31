import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_data_model.freezed.dart';
part 'route_data_model.g.dart';

@freezed
class RouteDataModel with _$RouteDataModel {
  const factory RouteDataModel({
    required List<RoutePoint> route,
    required List<Charger> chargers,
  }) = _RouteDataModel;

  factory RouteDataModel.fromJson(Map<String, dynamic> json) =>
      _$RouteDataModelFromJson(json);
}

@freezed
class RoutePoint with _$RoutePoint {
  const factory RoutePoint({
    @JsonKey(name: 'latitude')required double lat,
    @JsonKey(name: 'longitude')required double long,
  }) = _RoutePoint;

  factory RoutePoint.fromJson(Map<String, dynamic> json) =>
      _$RoutePointFromJson(json);
}

@freezed
class Charger with _$Charger {
  const factory Charger({
    required String id,
    required double lat,
    required double long,
  }) = _Charger;

  factory Charger.fromJson(Map<String, dynamic> json) =>
      _$ChargerFromJson(json);
}
