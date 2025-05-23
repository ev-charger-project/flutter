// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amenity_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AmenityImpl _$$AmenityImplFromJson(Map<String, dynamic> json) =>
    _$AmenityImpl(
      amenity: json['amenities_types'] as String,
      imageUrl: json['image_url'] as String? ?? '',
    );

Map<String, dynamic> _$$AmenityImplToJson(_$AmenityImpl instance) =>
    <String, dynamic>{
      'amenities_types': instance.amenity,
      'image_url': instance.imageUrl,
    };
