// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterUserRequestImpl _$$RegisterUserRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterUserRequestImpl(
      email: json['email'] ?? '',
      password: json['password'] ?? '',
    );

Map<String, dynamic> _$$RegisterUserRequestImplToJson(
        _$RegisterUserRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
