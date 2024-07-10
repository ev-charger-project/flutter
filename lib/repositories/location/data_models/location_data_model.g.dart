// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationDataModelImpl _$$LocationDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationDataModelImpl(
      id: json['id'] as String,
      name: json['location_name'] as String,
      streetAddress: json['street'] as String,
      district: json['district'] as String?,
      cityProvince: json['city'] as String,
      country: json['country'] as String,
      postalCode: json['postal_code'] as String?,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      description: json['description'] as String?,
      workingDay: WorkingDay.fromJson(
          Map<String, String>.from(json['working_day'] as Map)),
      pricing: json['pricing'] as String?,
      phoneNumber: json['phone_number'] as String?,
      parkingLevel: json['parking_level'] as String?,
    );

Map<String, dynamic> _$$LocationDataModelImplToJson(
        _$LocationDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location_name': instance.name,
      'street': instance.streetAddress,
      'district': instance.district,
      'city': instance.cityProvince,
      'country': instance.country,
      'postal_code': instance.postalCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'description': instance.description,
      'working_day': instance.workingDay,
      'pricing': instance.pricing,
      'phone_number': instance.phoneNumber,
      'parking_level': instance.parkingLevel,
    };

_$WorkingDayImpl _$$WorkingDayImplFromJson(Map<String, dynamic> json) =>
    _$WorkingDayImpl(
      mon: json['mon'] as String,
      tue: json['tue'] as String,
      wed: json['wed'] as String,
      thu: json['thu'] as String,
      fri: json['fri'] as String,
      sat: json['sat'] as String,
      sun: json['sun'] as String,
    );

Map<String, dynamic> _$$WorkingDayImplToJson(_$WorkingDayImpl instance) =>
    <String, dynamic>{
      'mon': instance.mon,
      'tue': instance.tue,
      'wed': instance.wed,
      'thu': instance.thu,
      'fri': instance.fri,
      'sat': instance.sat,
      'sun': instance.sun,
    };
