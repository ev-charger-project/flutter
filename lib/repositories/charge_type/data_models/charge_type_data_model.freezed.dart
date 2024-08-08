// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charge_type_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChargeTypeDataModel _$ChargeTypeDataModelFromJson(Map<String, dynamic> json) {
  return _ChargeType.fromJson(json);
}

/// @nodoc
mixin _$ChargeTypeDataModel {
  @JsonKey(name: 'plug_type')
  String get plug_type => throw _privateConstructorUsedError;
  @JsonKey(name: 'power_model')
  String get power_model => throw _privateConstructorUsedError;
  @JsonKey(name: 'plug_image_url')
  String get plug_image_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargeTypeDataModelCopyWith<ChargeTypeDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargeTypeDataModelCopyWith<$Res> {
  factory $ChargeTypeDataModelCopyWith(
          ChargeTypeDataModel value, $Res Function(ChargeTypeDataModel) then) =
      _$ChargeTypeDataModelCopyWithImpl<$Res, ChargeTypeDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'plug_type') String plug_type,
      @JsonKey(name: 'power_model') String power_model,
      @JsonKey(name: 'plug_image_url') String plug_image_url});
}

/// @nodoc
class _$ChargeTypeDataModelCopyWithImpl<$Res, $Val extends ChargeTypeDataModel>
    implements $ChargeTypeDataModelCopyWith<$Res> {
  _$ChargeTypeDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plug_type = null,
    Object? power_model = null,
    Object? plug_image_url = null,
  }) {
    return _then(_value.copyWith(
      plug_type: null == plug_type
          ? _value.plug_type
          : plug_type // ignore: cast_nullable_to_non_nullable
              as String,
      power_model: null == power_model
          ? _value.power_model
          : power_model // ignore: cast_nullable_to_non_nullable
              as String,
      plug_image_url: null == plug_image_url
          ? _value.plug_image_url
          : plug_image_url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChargeTypeImplCopyWith<$Res>
    implements $ChargeTypeDataModelCopyWith<$Res> {
  factory _$$ChargeTypeImplCopyWith(
          _$ChargeTypeImpl value, $Res Function(_$ChargeTypeImpl) then) =
      __$$ChargeTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'plug_type') String plug_type,
      @JsonKey(name: 'power_model') String power_model,
      @JsonKey(name: 'plug_image_url') String plug_image_url});
}

/// @nodoc
class __$$ChargeTypeImplCopyWithImpl<$Res>
    extends _$ChargeTypeDataModelCopyWithImpl<$Res, _$ChargeTypeImpl>
    implements _$$ChargeTypeImplCopyWith<$Res> {
  __$$ChargeTypeImplCopyWithImpl(
      _$ChargeTypeImpl _value, $Res Function(_$ChargeTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plug_type = null,
    Object? power_model = null,
    Object? plug_image_url = null,
  }) {
    return _then(_$ChargeTypeImpl(
      plug_type: null == plug_type
          ? _value.plug_type
          : plug_type // ignore: cast_nullable_to_non_nullable
              as String,
      power_model: null == power_model
          ? _value.power_model
          : power_model // ignore: cast_nullable_to_non_nullable
              as String,
      plug_image_url: null == plug_image_url
          ? _value.plug_image_url
          : plug_image_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChargeTypeImpl implements _ChargeType {
  const _$ChargeTypeImpl(
      {@JsonKey(name: 'plug_type') required this.plug_type,
      @JsonKey(name: 'power_model') required this.power_model,
      @JsonKey(name: 'plug_image_url') this.plug_image_url = ''});

  factory _$ChargeTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChargeTypeImplFromJson(json);

  @override
  @JsonKey(name: 'plug_type')
  final String plug_type;
  @override
  @JsonKey(name: 'power_model')
  final String power_model;
  @override
  @JsonKey(name: 'plug_image_url')
  final String plug_image_url;

  @override
  String toString() {
    return 'ChargeTypeDataModel(plug_type: $plug_type, power_model: $power_model, plug_image_url: $plug_image_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargeTypeImpl &&
            (identical(other.plug_type, plug_type) ||
                other.plug_type == plug_type) &&
            (identical(other.power_model, power_model) ||
                other.power_model == power_model) &&
            (identical(other.plug_image_url, plug_image_url) ||
                other.plug_image_url == plug_image_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, plug_type, power_model, plug_image_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeTypeImplCopyWith<_$ChargeTypeImpl> get copyWith =>
      __$$ChargeTypeImplCopyWithImpl<_$ChargeTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChargeTypeImplToJson(
      this,
    );
  }
}

abstract class _ChargeType implements ChargeTypeDataModel {
  const factory _ChargeType(
          {@JsonKey(name: 'plug_type') required final String plug_type,
          @JsonKey(name: 'power_model') required final String power_model,
          @JsonKey(name: 'plug_image_url') final String plug_image_url}) =
      _$ChargeTypeImpl;

  factory _ChargeType.fromJson(Map<String, dynamic> json) =
      _$ChargeTypeImpl.fromJson;

  @override
  @JsonKey(name: 'plug_type')
  String get plug_type;
  @override
  @JsonKey(name: 'power_model')
  String get power_model;
  @override
  @JsonKey(name: 'plug_image_url')
  String get plug_image_url;
  @override
  @JsonKey(ignore: true)
  _$$ChargeTypeImplCopyWith<_$ChargeTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
