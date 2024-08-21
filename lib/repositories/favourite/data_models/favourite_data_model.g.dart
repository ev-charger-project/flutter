// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavouriteImpl _$$FavouriteImplFromJson(Map<String, dynamic> json) =>
    _$FavouriteImpl(
      station_name: json['id'] as String,
      favourite:
          LocationDataModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FavouriteImplToJson(_$FavouriteImpl instance) =>
    <String, dynamic>{
      'id': instance.station_name,
      'location': instance.favourite,
    };
