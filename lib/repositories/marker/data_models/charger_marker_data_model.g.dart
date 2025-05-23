// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charger_marker_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChargerMarkerDataModelImpl _$$ChargerMarkerDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChargerMarkerDataModelImpl(
      id: json['id'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$ChargerMarkerDataModelImplToJson(
        _$ChargerMarkerDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
