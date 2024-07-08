// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) {
  return _UserDataModel.fromJson(json);
}

/// @nodoc
mixin _$UserDataModel {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataModelCopyWith<UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataModelCopyWith<$Res> {
  factory $UserDataModelCopyWith(
          UserDataModel value, $Res Function(UserDataModel) then) =
      _$UserDataModelCopyWithImpl<$Res, UserDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone_number') String? phoneNumber});
}

/// @nodoc
class _$UserDataModelCopyWithImpl<$Res, $Val extends UserDataModel>
    implements $UserDataModelCopyWith<$Res> {
  _$UserDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? email = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataModelImplCopyWith<$Res>
    implements $UserDataModelCopyWith<$Res> {
  factory _$$UserDataModelImplCopyWith(
          _$UserDataModelImpl value, $Res Function(_$UserDataModelImpl) then) =
      __$$UserDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone_number') String? phoneNumber});
}

/// @nodoc
class __$$UserDataModelImplCopyWithImpl<$Res>
    extends _$UserDataModelCopyWithImpl<$Res, _$UserDataModelImpl>
    implements _$$UserDataModelImplCopyWith<$Res> {
  __$$UserDataModelImplCopyWithImpl(
      _$UserDataModelImpl _value, $Res Function(_$UserDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? email = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$UserDataModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataModelImpl implements _UserDataModel {
  const _$UserDataModelImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'phone_number') this.phoneNumber});

  factory _$UserDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;

  @override
  String toString() {
    return 'UserDataModel(userId: $userId, username: $username, email: $email, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, username, email, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataModelImplCopyWith<_$UserDataModelImpl> get copyWith =>
      __$$UserDataModelImplCopyWithImpl<_$UserDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataModelImplToJson(
      this,
    );
  }
}

abstract class _UserDataModel implements UserDataModel {
  const factory _UserDataModel(
          {@JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'phone_number') final String? phoneNumber}) =
      _$UserDataModelImpl;

  factory _UserDataModel.fromJson(Map<String, dynamic> json) =
      _$UserDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$UserDataModelImplCopyWith<_$UserDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
