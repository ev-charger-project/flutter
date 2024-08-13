// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amenity_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AmenityImpl _$$AmenityImplFromJson(Map<String, dynamic> json) =>
    _$AmenityImpl(
      amenity: json['amenity'] as String,
      amenity_image_url: json['amenity_image_url'] as String? ?? '',
    );

Map<String, dynamic> _$$AmenityImplToJson(_$AmenityImpl instance) =>
    <String, dynamic>{
      'amenity': instance.amenity,
      'amenity_image_url': instance.amenity_image_url,
    };
