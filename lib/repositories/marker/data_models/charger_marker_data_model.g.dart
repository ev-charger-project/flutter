// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charger_marker_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChargerMarkerDataModelImpl _$$ChargerMarkerDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChargerMarkerDataModelImpl(
      id: json['location_id'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
    );

Map<String, dynamic> _$$ChargerMarkerDataModelImplToJson(
        _$ChargerMarkerDataModelImpl instance) =>
    <String, dynamic>{
      'location_id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
