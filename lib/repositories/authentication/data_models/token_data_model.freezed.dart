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
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenDataModelCopyWith<TokenDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDataModelCopyWith<$Res> {
  factory $TokenDataModelCopyWith(
          TokenDataModel value, $Res Function(TokenDataModel) then) =
      _$TokenDataModelCopyWithImpl<$Res, TokenDataModel>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$TokenDataModelCopyWithImpl<$Res, $Val extends TokenDataModel>
    implements $TokenDataModelCopyWith<$Res> {
  _$TokenDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
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
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$TokenDataModelImplCopyWithImpl<$Res>
    extends _$TokenDataModelCopyWithImpl<$Res, _$TokenDataModelImpl>
    implements _$$TokenDataModelImplCopyWith<$Res> {
  __$$TokenDataModelImplCopyWithImpl(
      _$TokenDataModelImpl _value, $Res Function(_$TokenDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$TokenDataModelImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenDataModelImpl implements _TokenDataModel {
  _$TokenDataModelImpl({required this.accessToken, required this.refreshToken});

  factory _$TokenDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenDataModelImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'TokenDataModel(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenDataModelImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
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
      {required final String accessToken,
      required final String refreshToken}) = _$TokenDataModelImpl;

  factory _TokenDataModel.fromJson(Map<String, dynamic> json) =
      _$TokenDataModelImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$TokenDataModelImplCopyWith<_$TokenDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
