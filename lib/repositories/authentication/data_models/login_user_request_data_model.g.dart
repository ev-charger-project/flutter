// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_request_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginUserRequestDataModelImpl _$$LoginUserRequestDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginUserRequestDataModelImpl(
      email: json['email'] ?? '',
      password: json['password'] ?? '',
    );

Map<String, dynamic> _$$LoginUserRequestDataModelImplToJson(
        _$LoginUserRequestDataModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
