// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user_request_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterUserRequestDataModel _$RegisterUserRequestDataModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterUserRequestDataModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterUserRequestDataModel {
  dynamic get email => throw _privateConstructorUsedError;
  dynamic get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterUserRequestDataModelCopyWith<RegisterUserRequestDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserRequestDataModelCopyWith<$Res> {
  factory $RegisterUserRequestDataModelCopyWith(
          RegisterUserRequestDataModel value,
          $Res Function(RegisterUserRequestDataModel) then) =
      _$RegisterUserRequestDataModelCopyWithImpl<$Res,
          RegisterUserRequestDataModel>;
  @useResult
  $Res call({dynamic email, dynamic password});
}

/// @nodoc
class _$RegisterUserRequestDataModelCopyWithImpl<$Res,
        $Val extends RegisterUserRequestDataModel>
    implements $RegisterUserRequestDataModelCopyWith<$Res> {
  _$RegisterUserRequestDataModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RegisterUserRequestDataModelImplCopyWith<$Res>
    implements $RegisterUserRequestDataModelCopyWith<$Res> {
  factory _$$RegisterUserRequestDataModelImplCopyWith(
          _$RegisterUserRequestDataModelImpl value,
          $Res Function(_$RegisterUserRequestDataModelImpl) then) =
      __$$RegisterUserRequestDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic email, dynamic password});
}

/// @nodoc
class __$$RegisterUserRequestDataModelImplCopyWithImpl<$Res>
    extends _$RegisterUserRequestDataModelCopyWithImpl<$Res,
        _$RegisterUserRequestDataModelImpl>
    implements _$$RegisterUserRequestDataModelImplCopyWith<$Res> {
  __$$RegisterUserRequestDataModelImplCopyWithImpl(
      _$RegisterUserRequestDataModelImpl _value,
      $Res Function(_$RegisterUserRequestDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$RegisterUserRequestDataModelImpl(
      email: freezed == email ? _value.email! : email,
      password: freezed == password ? _value.password! : password,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterUserRequestDataModelImpl
    implements _RegisterUserRequestDataModel {
  _$RegisterUserRequestDataModelImpl({this.email = '', this.password = ''});

  factory _$RegisterUserRequestDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegisterUserRequestDataModelImplFromJson(json);

  @override
  @JsonKey()
  final dynamic email;
  @override
  @JsonKey()
  final dynamic password;

  @override
  String toString() {
    return 'RegisterUserRequestDataModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserRequestDataModelImpl &&
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
  _$$RegisterUserRequestDataModelImplCopyWith<
          _$RegisterUserRequestDataModelImpl>
      get copyWith => __$$RegisterUserRequestDataModelImplCopyWithImpl<
          _$RegisterUserRequestDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterUserRequestDataModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterUserRequestDataModel
    implements RegisterUserRequestDataModel {
  factory _RegisterUserRequestDataModel(
      {final dynamic email,
      final dynamic password}) = _$RegisterUserRequestDataModelImpl;

  factory _RegisterUserRequestDataModel.fromJson(Map<String, dynamic> json) =
      _$RegisterUserRequestDataModelImpl.fromJson;

  @override
  dynamic get email;
  @override
  dynamic get password;
  @override
  @JsonKey(ignore: true)
  _$$RegisterUserRequestDataModelImplCopyWith<
          _$RegisterUserRequestDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
