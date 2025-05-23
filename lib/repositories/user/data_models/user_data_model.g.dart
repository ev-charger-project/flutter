// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataModelImpl _$$UserDataModelImplFromJson(Map<String, dynamic> json) =>
    _$UserDataModelImpl(
      userId: json['user_id'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      favourites: (json['favourites'] as List<dynamic>?)
          ?.map((e) => LocationDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserDataModelImplToJson(_$UserDataModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'favourites': instance.favourites,
    };
