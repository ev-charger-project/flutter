// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuggestionImpl _$$SuggestionImplFromJson(Map<String, dynamic> json) =>
    _$SuggestionImpl(
      locationId: json['location_id'] as String,
      locationName: json['location_name'] as String,
      street: json['street'] as String,
      district: json['district'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      postalCode: json['postal_code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$SuggestionImplToJson(_$SuggestionImpl instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'location_name': instance.locationName,
      'street': instance.street,
      'district': instance.district,
      'city': instance.city,
      'country': instance.country,
      'postal_code': instance.postalCode,
      'description': instance.description,
    };
