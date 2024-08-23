import 'package:freezed_annotation/freezed_annotation.dart';

import '../data_models/route_data_model.dart';

part 'route_entity.freezed.dart';

@freezed
class RouteEntity with _$RouteEntity {
  const factory RouteEntity({
    required List<RoutePointEntity> route,
    required List<ChargerEntity> chargers,
    required String hashcode,
  }) = _RouteEntity;
}

@freezed
class RoutePointEntity with _$RoutePointEntity {
  const factory RoutePointEntity({
    required double lat,
    required double long,
  }) = _RoutePointEntity;
}

@freezed
class ChargerEntity with _$ChargerEntity {
  const factory ChargerEntity({
    required String id,
    required double lat,
    required double long,
  }) = _ChargerEntity;
}

class RouteMapper {
  RouteDataModel toDataModel(RouteEntity entity) {
    return RouteDataModel(
      route: entity.route
          .map((e) => RoutePoint(lat: e.lat, long: e.long))
          .toList(),
      chargers: entity.chargers
          .map((e) => Charger(id: e.id, lat: e.lat, long: e.long))
          .toList(),
      hashcode: entity.hashcode,
    );
  }

  RouteEntity toEntity(RouteDataModel dataModel) {
    return RouteEntity(
      route: dataModel.route
          .map((e) => RoutePointEntity(lat: e.lat, long: e.long))
          .toList(),
      chargers: dataModel.chargers
          .map((e) => ChargerEntity(id: e.id, lat: e.lat, long: e.long))
          .toList(),
      hashcode: dataModel.hashcode,
    );
  }

  List<RouteEntity> toEntityList(List<RouteDataModel> dataModels) {
    return dataModels.map((dataModel) => toEntity(dataModel)).toList();
  }
}
