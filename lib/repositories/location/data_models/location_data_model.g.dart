// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationDataModelImpl _$$LocationDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationDataModelImpl(
      id: json['id'] as String? ?? 'blank',
      name: json['location_name'] as String,
      street: json['street'] as String,
      district: json['district'] as String?,
      city: json['city'] as String,
      postal: json['postal_code'] as String?,
      country: json['country'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      description: json['description'] as String?,
      workingDays: (json['working_days'] as List<dynamic>?)
              ?.map((e) => WorkingDay.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pricing: json['pricing'] as String?,
      phoneNumber: json['phone_number'] as String?,
      parkingLevel: json['parking_level'] as String?,
      ev_chargers: (json['ev_chargers'] as List<dynamic>?)
              ?.map((e) => ChargerDataModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      locationAmenities: (json['location_amenities'] as List<dynamic>?)
              ?.map((e) =>
                  LocationAmenityDataModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LocationDataModelImplToJson(
        _$LocationDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location_name': instance.name,
      'street': instance.street,
      'district': instance.district,
      'city': instance.city,
      'postal_code': instance.postal,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'description': instance.description,
      'working_days': instance.workingDays,
      'pricing': instance.pricing,
      'phone_number': instance.phoneNumber,
      'parking_level': instance.parkingLevel,
      'ev_chargers': instance.ev_chargers,
      'location_amenities': instance.locationAmenities,
    };

_$WorkingDayImpl _$$WorkingDayImplFromJson(Map<String, dynamic> json) =>
    _$WorkingDayImpl(
      day: (json['day'] as num).toInt(),
      openTime: json['open_time'] as String,
      closeTime: json['close_time'] as String,
    );

Map<String, dynamic> _$$WorkingDayImplToJson(_$WorkingDayImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'open_time': instance.openTime,
      'close_time': instance.closeTime,
    };
