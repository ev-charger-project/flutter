// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenDataModelImpl _$$TokenDataModelImplFromJson(Map<String, dynamic> json) =>
    _$TokenDataModelImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$TokenDataModelImplToJson(
        _$TokenDataModelImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
