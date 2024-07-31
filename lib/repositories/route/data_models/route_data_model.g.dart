// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteDataModelImpl _$$RouteDataModelImplFromJson(Map<String, dynamic> json) =>
    _$RouteDataModelImpl(
      route: (json['route'] as List<dynamic>)
          .map((e) => RoutePoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      chargers: (json['chargers'] as List<dynamic>)
          .map((e) => Charger.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RouteDataModelImplToJson(
        _$RouteDataModelImpl instance) =>
    <String, dynamic>{
      'route': instance.route,
      'chargers': instance.chargers,
    };

_$RoutePointImpl _$$RoutePointImplFromJson(Map<String, dynamic> json) =>
    _$RoutePointImpl(
      lat: (json['latitude'] as num).toDouble(),
      long: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$RoutePointImplToJson(_$RoutePointImpl instance) =>
    <String, dynamic>{
      'latitude': instance.lat,
      'longitude': instance.long,
    };

_$ChargerImpl _$$ChargerImplFromJson(Map<String, dynamic> json) =>
    _$ChargerImpl(
      id: json['id'] as String,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$$ChargerImplToJson(_$ChargerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lat': instance.lat,
      'long': instance.long,
    };
