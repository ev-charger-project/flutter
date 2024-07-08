// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charger_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChargerImpl _$$ChargerImplFromJson(Map<String, dynamic> json) =>
    _$ChargerImpl(
      chargerId: json['charger_id'] as String,
      locationId: json['location_id'] as String,
      powerOutputId: json['power_output_id'] as String,
      powerPlugTypeId: json['power_plug_type_id'] as String,
      numberOfPorts: (json['number_of_ports'] as num).toInt(),
      availabity: json['availabity'] as String,
      installationDate: json['installation_date'] == null
          ? null
          : DateTime.parse(json['installation_date'] as String),
      lastMaintainanceDate: json['last_maintainance_date'] == null
          ? null
          : DateTime.parse(json['last_maintainance_date'] as String),
    );

Map<String, dynamic> _$$ChargerImplToJson(_$ChargerImpl instance) =>
    <String, dynamic>{
      'charger_id': instance.chargerId,
      'location_id': instance.locationId,
      'power_output_id': instance.powerOutputId,
      'power_plug_type_id': instance.powerPlugTypeId,
      'number_of_ports': instance.numberOfPorts,
      'availabity': instance.availabity,
      'installation_date': instance.installationDate?.toIso8601String(),
      'last_maintainance_date':
          instance.lastMaintainanceDate?.toIso8601String(),
    };
