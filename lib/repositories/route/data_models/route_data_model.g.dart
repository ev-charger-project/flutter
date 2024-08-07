// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteDataModelImpl _$$RouteDataModelImplFromJson(Map<String, dynamic> json) =>
    _$RouteDataModelImpl(
      route: (json['coordinates'] as List<dynamic>)
          .map((e) => RoutePoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      chargers: (json['locations'] as List<dynamic>)
          .map((e) => Charger.fromJson(e as Map<String, dynamic>))
          .toList(),
      hashcode: json['hashCode'] as String,
    );

Map<String, dynamic> _$$RouteDataModelImplToJson(
        _$RouteDataModelImpl instance) =>
    <String, dynamic>{
      'coordinates': instance.route,
      'locations': instance.chargers,
      'hashCode': instance.hashcode,
    };

_$RoutePointImpl _$$RoutePointImplFromJson(Map<String, dynamic> json) =>
    _$RoutePointImpl(
      lat: (json['lat'] as num).toDouble(),
      long: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$RoutePointImplToJson(_$RoutePointImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.long,
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
