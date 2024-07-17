// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charger_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChargerImpl _$$ChargerImplFromJson(Map<String, dynamic> json) =>
    _$ChargerImpl(
      station_name: json['station_name'] as String,
      availability: json['availability'] as String,
      ports: (json['ports'] as List<dynamic>)
          .map(
              (e) => PortDataModel.fromJson(Map<String, String>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$ChargerImplToJson(_$ChargerImpl instance) =>
    <String, dynamic>{
      'station_name': instance.station_name,
      'availability': instance.availability,
      'ports': instance.ports,
    };

_$PortDataModelImpl _$$PortDataModelImplFromJson(Map<String, dynamic> json) =>
    _$PortDataModelImpl(
      power_plug_type: PowerPlugTypeDataModel.fromJson(
          json['power_plug_type'] as Map<String, dynamic>),
      power_model: PowerOutputDataModel.fromJson(
          json['power_model'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PortDataModelImplToJson(_$PortDataModelImpl instance) =>
    <String, dynamic>{
      'power_plug_type': instance.power_plug_type,
      'power_model': instance.power_model,
    };
