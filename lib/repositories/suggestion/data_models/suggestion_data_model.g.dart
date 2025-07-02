// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuggestionImpl _$$SuggestionImplFromJson(Map<String, dynamic> json) =>
    _$SuggestionImpl(
      locationId: json['id'] as String,
      locationName: json['location_name'] as String,
      houseNumber: json['house_number'] as String?,
      street: json['street'] as String?,
      district: json['district'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String,
      county: json['county'] as String?,
      country: json['country'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      postalCode: json['postal_code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$SuggestionImplToJson(_$SuggestionImpl instance) =>
    <String, dynamic>{
      'id': instance.locationId,
      'location_name': instance.locationName,
      'house_number': instance.houseNumber,
      'street': instance.street,
      'district': instance.district,
      'state': instance.state,
      'city': instance.city,
      'county': instance.county,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'postal_code': instance.postalCode,
      'description': instance.description,
    };
