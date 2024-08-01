// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginUserRequestImpl _$$LoginUserRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginUserRequestImpl(
      email: json['email'] ?? '',
      password: json['password'] ?? '',
    );

Map<String, dynamic> _$$LoginUserRequestImplToJson(
        _$LoginUserRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
