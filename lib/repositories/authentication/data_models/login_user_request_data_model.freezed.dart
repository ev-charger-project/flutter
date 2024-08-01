// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_user_request_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginUserRequestDataModel _$LoginUserRequestDataModelFromJson(
    Map<String, dynamic> json) {
  return _LoginUserRequestDataModel.fromJson(json);
}

/// @nodoc
mixin _$LoginUserRequestDataModel {
  dynamic get email => throw _privateConstructorUsedError;
  dynamic get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginUserRequestDataModelCopyWith<LoginUserRequestDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserRequestDataModelCopyWith<$Res> {
  factory $LoginUserRequestDataModelCopyWith(LoginUserRequestDataModel value,
          $Res Function(LoginUserRequestDataModel) then) =
      _$LoginUserRequestDataModelCopyWithImpl<$Res, LoginUserRequestDataModel>;
  @useResult
  $Res call({dynamic email, dynamic password});
}

/// @nodoc
class _$LoginUserRequestDataModelCopyWithImpl<$Res,
        $Val extends LoginUserRequestDataModel>
    implements $LoginUserRequestDataModelCopyWith<$Res> {
  _$LoginUserRequestDataModelCopyWithImpl(this._value, this._then);

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
abstract class _$$LoginUserRequestDataModelImplCopyWith<$Res>
    implements $LoginUserRequestDataModelCopyWith<$Res> {
  factory _$$LoginUserRequestDataModelImplCopyWith(
          _$LoginUserRequestDataModelImpl value,
          $Res Function(_$LoginUserRequestDataModelImpl) then) =
      __$$LoginUserRequestDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic email, dynamic password});
}

/// @nodoc
class __$$LoginUserRequestDataModelImplCopyWithImpl<$Res>
    extends _$LoginUserRequestDataModelCopyWithImpl<$Res,
        _$LoginUserRequestDataModelImpl>
    implements _$$LoginUserRequestDataModelImplCopyWith<$Res> {
  __$$LoginUserRequestDataModelImplCopyWithImpl(
      _$LoginUserRequestDataModelImpl _value,
      $Res Function(_$LoginUserRequestDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$LoginUserRequestDataModelImpl(
      email: freezed == email ? _value.email! : email,
      password: freezed == password ? _value.password! : password,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginUserRequestDataModelImpl implements _LoginUserRequestDataModel {
  _$LoginUserRequestDataModelImpl({this.email = '', this.password = ''});

  factory _$LoginUserRequestDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginUserRequestDataModelImplFromJson(json);

  @override
  @JsonKey()
  final dynamic email;
  @override
  @JsonKey()
  final dynamic password;

  @override
  String toString() {
    return 'LoginUserRequestDataModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserRequestDataModelImpl &&
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
  _$$LoginUserRequestDataModelImplCopyWith<_$LoginUserRequestDataModelImpl>
      get copyWith => __$$LoginUserRequestDataModelImplCopyWithImpl<
          _$LoginUserRequestDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginUserRequestDataModelImplToJson(
      this,
    );
  }
}

abstract class _LoginUserRequestDataModel implements LoginUserRequestDataModel {
  factory _LoginUserRequestDataModel(
      {final dynamic email,
      final dynamic password}) = _$LoginUserRequestDataModelImpl;

  factory _LoginUserRequestDataModel.fromJson(Map<String, dynamic> json) =
      _$LoginUserRequestDataModelImpl.fromJson;

  @override
  dynamic get email;
  @override
  dynamic get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginUserRequestDataModelImplCopyWith<_$LoginUserRequestDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
