// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_search_history_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationSearchHistoryDataModelImpl
    _$$LocationSearchHistoryDataModelImplFromJson(Map<String, dynamic> json) =>
        _$LocationSearchHistoryDataModelImpl(
          id: json['id'] as String? ?? 'blank',
          updatedAt: json['updated_at'] as String,
          location: LocationDataModel.fromJson(
              json['location'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$LocationSearchHistoryDataModelImplToJson(
        _$LocationSearchHistoryDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updated_at': instance.updatedAt,
      'location': instance.location,
    };

_$LocationSummaryDataModelImpl _$$LocationSummaryDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationSummaryDataModelImpl(
      locationName: json['location_name'] as String,
      street: json['street'] as String,
      district: json['district'] as String?,
      city: json['city'] as String,
      postal: json['postal_code'] as String?,
      country: json['country'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$LocationSummaryDataModelImplToJson(
        _$LocationSummaryDataModelImpl instance) =>
    <String, dynamic>{
      'location_name': instance.locationName,
      'street': instance.street,
      'district': instance.district,
      'city': instance.city,
      'postal_code': instance.postal,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
