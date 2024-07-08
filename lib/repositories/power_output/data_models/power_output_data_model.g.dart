// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_output_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PowerOutputDataModelImpl _$$PowerOutputDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PowerOutputDataModelImpl(
      id: json['id'] as String,
      outputValue: (json['output_value'] as num).toInt(),
      chargingSpeed: json['charging_speed'] as String,
      voltage: (json['voltage'] as num).toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$PowerOutputDataModelImplToJson(
        _$PowerOutputDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'output_value': instance.outputValue,
      'charging_speed': instance.chargingSpeed,
      'voltage': instance.voltage,
      'description': instance.description,
    };
