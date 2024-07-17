// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_output_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PowerOutputDataModelImpl _$$PowerOutputDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PowerOutputDataModelImpl(
      outputValue: (json['output_value'] as num).toInt(),
      chargingSpeed: json['charging_speed'] as String,
      voltage: (json['voltage'] as num).toInt(),
    );

Map<String, dynamic> _$$PowerOutputDataModelImplToJson(
        _$PowerOutputDataModelImpl instance) =>
    <String, dynamic>{
      'output_value': instance.outputValue,
      'charging_speed': instance.chargingSpeed,
      'voltage': instance.voltage,
    };
