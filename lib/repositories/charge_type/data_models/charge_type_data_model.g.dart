// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_type_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChargeTypeImpl _$$ChargeTypeImplFromJson(Map<String, dynamic> json) =>
    _$ChargeTypeImpl(
      plug_type: json['plug_type'] as String,
      power_model: json['power_model'] as String,
      plug_image_url: json['plug_image_url'] as String? ?? '',
    );

Map<String, dynamic> _$$ChargeTypeImplToJson(_$ChargeTypeImpl instance) =>
    <String, dynamic>{
      'plug_type': instance.plug_type,
      'power_model': instance.power_model,
      'plug_image_url': instance.plug_image_url,
    };
