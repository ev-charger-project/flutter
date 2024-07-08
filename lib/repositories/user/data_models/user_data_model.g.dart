// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      userId: json['user_id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
    };
