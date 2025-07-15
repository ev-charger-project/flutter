// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenDataModel _$TokenDataModelFromJson(Map<String, dynamic> json) {
  return _TokenDataModel.fromJson(json);
}

/// @nodoc
mixin _$TokenDataModel {
  String get access_token => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;

  /// Serializes this TokenDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenDataModelCopyWith<TokenDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDataModelCopyWith<$Res> {
  factory $TokenDataModelCopyWith(
          TokenDataModel value, $Res Function(TokenDataModel) then) =
      _$TokenDataModelCopyWithImpl<$Res, TokenDataModel>;
  @useResult
  $Res call({String access_token, String refresh_token});
}

/// @nodoc
class _$TokenDataModelCopyWithImpl<$Res, $Val extends TokenDataModel>
    implements $TokenDataModelCopyWith<$Res> {
  _$TokenDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? refresh_token = null,
  }) {
    return _then(_value.copyWith(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenDataModelImplCopyWith<$Res>
    implements $TokenDataModelCopyWith<$Res> {
  factory _$$TokenDataModelImplCopyWith(_$TokenDataModelImpl value,
          $Res Function(_$TokenDataModelImpl) then) =
      __$$TokenDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String access_token, String refresh_token});
}

/// @nodoc
class __$$TokenDataModelImplCopyWithImpl<$Res>
    extends _$TokenDataModelCopyWithImpl<$Res, _$TokenDataModelImpl>
    implements _$$TokenDataModelImplCopyWith<$Res> {
  __$$TokenDataModelImplCopyWithImpl(
      _$TokenDataModelImpl _value, $Res Function(_$TokenDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? refresh_token = null,
  }) {
    return _then(_$TokenDataModelImpl(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenDataModelImpl implements _TokenDataModel {
  _$TokenDataModelImpl(
      {required this.access_token, required this.refresh_token});

  factory _$TokenDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenDataModelImplFromJson(json);

  @override
  final String access_token;
  @override
  final String refresh_token;

  @override
  String toString() {
    return 'TokenDataModel(access_token: $access_token, refresh_token: $refresh_token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenDataModelImpl &&
            (identical(other.access_token, access_token) ||
                other.access_token == access_token) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, access_token, refresh_token);

  /// Create a copy of TokenDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenDataModelImplCopyWith<_$TokenDataModelImpl> get copyWith =>
      __$$TokenDataModelImplCopyWithImpl<_$TokenDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenDataModelImplToJson(
      this,
    );
  }
}

abstract class _TokenDataModel implements TokenDataModel {
  factory _TokenDataModel(
      {required final String access_token,
      required final String refresh_token}) = _$TokenDataModelImpl;

  factory _TokenDataModel.fromJson(Map<String, dynamic> json) =
      _$TokenDataModelImpl.fromJson;

  @override
  String get access_token;
  @override
  String get refresh_token;

  /// Create a copy of TokenDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenDataModelImplCopyWith<_$TokenDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
