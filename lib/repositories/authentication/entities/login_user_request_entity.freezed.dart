// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_user_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginUserRequest _$LoginUserRequestFromJson(Map<String, dynamic> json) {
  return _LoginUserRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginUserRequest {
  dynamic get email => throw _privateConstructorUsedError;
  dynamic get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginUserRequestCopyWith<LoginUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserRequestCopyWith<$Res> {
  factory $LoginUserRequestCopyWith(
          LoginUserRequest value, $Res Function(LoginUserRequest) then) =
      _$LoginUserRequestCopyWithImpl<$Res, LoginUserRequest>;
  @useResult
  $Res call({dynamic email, dynamic password});
}

/// @nodoc
class _$LoginUserRequestCopyWithImpl<$Res, $Val extends LoginUserRequest>
    implements $LoginUserRequestCopyWith<$Res> {
  _$LoginUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginUserRequestImplCopyWith<$Res>
    implements $LoginUserRequestCopyWith<$Res> {
  factory _$$LoginUserRequestImplCopyWith(_$LoginUserRequestImpl value,
          $Res Function(_$LoginUserRequestImpl) then) =
      __$$LoginUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic email, dynamic password});
}

/// @nodoc
class __$$LoginUserRequestImplCopyWithImpl<$Res>
    extends _$LoginUserRequestCopyWithImpl<$Res, _$LoginUserRequestImpl>
    implements _$$LoginUserRequestImplCopyWith<$Res> {
  __$$LoginUserRequestImplCopyWithImpl(_$LoginUserRequestImpl _value,
      $Res Function(_$LoginUserRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$LoginUserRequestImpl(
      email: freezed == email ? _value.email! : email,
      password: freezed == password ? _value.password! : password,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginUserRequestImpl implements _LoginUserRequest {
  _$LoginUserRequestImpl({this.email = '', this.password = ''});

  factory _$LoginUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginUserRequestImplFromJson(json);

  @override
  @JsonKey()
  final dynamic email;
  @override
  @JsonKey()
  final dynamic password;

  @override
  String toString() {
    return 'LoginUserRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserRequestImpl &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserRequestImplCopyWith<_$LoginUserRequestImpl> get copyWith =>
      __$$LoginUserRequestImplCopyWithImpl<_$LoginUserRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginUserRequestImplToJson(
      this,
    );
  }
}

abstract class _LoginUserRequest implements LoginUserRequest {
  factory _LoginUserRequest({final dynamic email, final dynamic password}) =
      _$LoginUserRequestImpl;

  factory _LoginUserRequest.fromJson(Map<String, dynamic> json) =
      _$LoginUserRequestImpl.fromJson;

  @override
  dynamic get email;
  @override
  dynamic get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginUserRequestImplCopyWith<_$LoginUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
