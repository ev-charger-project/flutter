// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charge_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChargeTypeEntity {
  String get plug_type => throw _privateConstructorUsedError;
  String get power_model => throw _privateConstructorUsedError;
  String get plug_image_url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChargeTypeEntityCopyWith<ChargeTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargeTypeEntityCopyWith<$Res> {
  factory $ChargeTypeEntityCopyWith(
          ChargeTypeEntity value, $Res Function(ChargeTypeEntity) then) =
      _$ChargeTypeEntityCopyWithImpl<$Res, ChargeTypeEntity>;
  @useResult
  $Res call({String plug_type, String power_model, String plug_image_url});
}

/// @nodoc
class _$ChargeTypeEntityCopyWithImpl<$Res, $Val extends ChargeTypeEntity>
    implements $ChargeTypeEntityCopyWith<$Res> {
  _$ChargeTypeEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$ChargeTypeEntityImplCopyWith<$Res>
    implements $ChargeTypeEntityCopyWith<$Res> {
  factory _$$ChargeTypeEntityImplCopyWith(_$ChargeTypeEntityImpl value,
          $Res Function(_$ChargeTypeEntityImpl) then) =
      __$$ChargeTypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String plug_type, String power_model, String plug_image_url});
}

/// @nodoc
class __$$ChargeTypeEntityImplCopyWithImpl<$Res>
    extends _$ChargeTypeEntityCopyWithImpl<$Res, _$ChargeTypeEntityImpl>
    implements _$$ChargeTypeEntityImplCopyWith<$Res> {
  __$$ChargeTypeEntityImplCopyWithImpl(_$ChargeTypeEntityImpl _value,
      $Res Function(_$ChargeTypeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plug_type = null,
    Object? power_model = null,
    Object? plug_image_url = null,
  }) {
    return _then(_$ChargeTypeEntityImpl(
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

class _$ChargeTypeEntityImpl implements _ChargeTypeEntity {
  const _$ChargeTypeEntityImpl(
      {required this.plug_type,
      required this.power_model,
      required this.plug_image_url});

  @override
  final String plug_type;
  @override
  final String power_model;
  @override
  final String plug_image_url;

  @override
  String toString() {
    return 'ChargeTypeEntity(plug_type: $plug_type, power_model: $power_model, plug_image_url: $plug_image_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargeTypeEntityImpl &&
            (identical(other.plug_type, plug_type) ||
                other.plug_type == plug_type) &&
            (identical(other.power_model, power_model) ||
                other.power_model == power_model) &&
            (identical(other.plug_image_url, plug_image_url) ||
                other.plug_image_url == plug_image_url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, plug_type, power_model, plug_image_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeTypeEntityImplCopyWith<_$ChargeTypeEntityImpl> get copyWith =>
      __$$ChargeTypeEntityImplCopyWithImpl<_$ChargeTypeEntityImpl>(
          this, _$identity);
}

abstract class _ChargeTypeEntity implements ChargeTypeEntity {
  const factory _ChargeTypeEntity(
      {required final String plug_type,
      required final String power_model,
      required final String plug_image_url}) = _$ChargeTypeEntityImpl;

  @override
  String get plug_type;
  @override
  String get power_model;
  @override
  String get plug_image_url;
  @override
  @JsonKey(ignore: true)
  _$$ChargeTypeEntityImplCopyWith<_$ChargeTypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
