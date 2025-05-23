// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenDataModelImpl _$$TokenDataModelImplFromJson(Map<String, dynamic> json) =>
    _$TokenDataModelImpl(
      access_token: json['access_token'] as String,
      refresh_token: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$TokenDataModelImplToJson(
        _$TokenDataModelImpl instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
    };
