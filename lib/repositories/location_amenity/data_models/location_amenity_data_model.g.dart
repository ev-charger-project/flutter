// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_amenity_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationAmenityDataModelImpl _$$LocationAmenityDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationAmenityDataModelImpl(
      amenities:
          AmenityDataModel.fromJson(json['amenities'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationAmenityDataModelImplToJson(
        _$LocationAmenityDataModelImpl instance) =>
    <String, dynamic>{
      'amenities': instance.amenities,
    };
