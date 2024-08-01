// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_request_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterUserRequestDataModelImpl _$$RegisterUserRequestDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterUserRequestDataModelImpl(
      email: json['email'] ?? '',
      password: json['password'] ?? '',
    );

Map<String, dynamic> _$$RegisterUserRequestDataModelImplToJson(
        _$RegisterUserRequestDataModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
