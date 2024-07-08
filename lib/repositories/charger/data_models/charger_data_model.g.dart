// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charger_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChargerImpl _$$ChargerImplFromJson(Map<String, dynamic> json) =>
    _$ChargerImpl(
      id: json['id'] as String,
      locationId: json['location_id'] as String,
      powerOutputId: json['power_output_id'] as String,
      powerPlugTypeId: json['power_plug_type_id'] as String,
      numberOfPort: (json['number_of_port'] as num).toInt(),
      availabity: json['availabity'] as String,
    );

Map<String, dynamic> _$$ChargerImplToJson(_$ChargerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location_id': instance.locationId,
      'power_output_id': instance.powerOutputId,
      'power_plug_type_id': instance.powerPlugTypeId,
      'number_of_port': instance.numberOfPort,
      'availabity': instance.availabity,
    };
