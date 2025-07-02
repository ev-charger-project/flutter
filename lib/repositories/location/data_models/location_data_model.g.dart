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
      houseNumber: json['house_number'] as String?,
      street: json['street'] as String?,
      district: json['district'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String,
      county: json['county'] as String?,
      country: json['country'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      postal: json['postal_code'] as String?,
      description: json['description'] as String?,
      workingDays: (json['working_days'] as List<dynamic>?)
              ?.map((e) => WorkingDay.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pricing: json['pricing'] as String?,
      phoneNumber: json['phone_number'] as String?,
      parkingLevel: json['parking_level'] as String?,
      websiteUrl: json['website_url'] as String?,
      imageUrl: json['image_url'] as String?,
      totalChargingPorts: (json['total_charging_ports'] as num?)?.toInt(),
      access: json['access'] as String?,
      paymentMethods: json['payment_methods'] as String?,
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
      'house_number': instance.houseNumber,
      'street': instance.street,
      'district': instance.district,
      'state': instance.state,
      'city': instance.city,
      'county': instance.county,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'postal_code': instance.postal,
      'description': instance.description,
      'working_days': instance.workingDays,
      'pricing': instance.pricing,
      'phone_number': instance.phoneNumber,
      'parking_level': instance.parkingLevel,
      'website_url': instance.websiteUrl,
      'image_url': instance.imageUrl,
      'total_charging_ports': instance.totalChargingPorts,
      'access': instance.access,
      'payment_methods': instance.paymentMethods,
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
