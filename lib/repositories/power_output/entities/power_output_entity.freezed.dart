// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'power_output_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PowerOutputEntity {
  String get id => throw _privateConstructorUsedError;
  int get outputValue => throw _privateConstructorUsedError;
  String get chargingSpeed => throw _privateConstructorUsedError;
  int get voltage => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PowerOutputEntityCopyWith<PowerOutputEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PowerOutputEntityCopyWith<$Res> {
  factory $PowerOutputEntityCopyWith(
          PowerOutputEntity value, $Res Function(PowerOutputEntity) then) =
      _$PowerOutputEntityCopyWithImpl<$Res, PowerOutputEntity>;
  @useResult
  $Res call(
      {String id,
      int outputValue,
      String chargingSpeed,
      int voltage,
      String? description});
}

/// @nodoc
class _$PowerOutputEntityCopyWithImpl<$Res, $Val extends PowerOutputEntity>
    implements $PowerOutputEntityCopyWith<$Res> {
  _$PowerOutputEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? outputValue = null,
    Object? chargingSpeed = null,
    Object? voltage = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      outputValue: null == outputValue
          ? _value.outputValue
          : outputValue // ignore: cast_nullable_to_non_nullable
              as int,
      chargingSpeed: null == chargingSpeed
          ? _value.chargingSpeed
          : chargingSpeed // ignore: cast_nullable_to_non_nullable
              as String,
      voltage: null == voltage
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PowerOutputEntityImplCopyWith<$Res>
    implements $PowerOutputEntityCopyWith<$Res> {
  factory _$$PowerOutputEntityImplCopyWith(_$PowerOutputEntityImpl value,
          $Res Function(_$PowerOutputEntityImpl) then) =
      __$$PowerOutputEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int outputValue,
      String chargingSpeed,
      int voltage,
      String? description});
}

/// @nodoc
class __$$PowerOutputEntityImplCopyWithImpl<$Res>
    extends _$PowerOutputEntityCopyWithImpl<$Res, _$PowerOutputEntityImpl>
    implements _$$PowerOutputEntityImplCopyWith<$Res> {
  __$$PowerOutputEntityImplCopyWithImpl(_$PowerOutputEntityImpl _value,
      $Res Function(_$PowerOutputEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? outputValue = null,
    Object? chargingSpeed = null,
    Object? voltage = null,
    Object? description = freezed,
  }) {
    return _then(_$PowerOutputEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      outputValue: null == outputValue
          ? _value.outputValue
          : outputValue // ignore: cast_nullable_to_non_nullable
              as int,
      chargingSpeed: null == chargingSpeed
          ? _value.chargingSpeed
          : chargingSpeed // ignore: cast_nullable_to_non_nullable
              as String,
      voltage: null == voltage
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PowerOutputEntityImpl implements _PowerOutputEntity {
  const _$PowerOutputEntityImpl(
      {required this.id,
      required this.outputValue,
      required this.chargingSpeed,
      required this.voltage,
      this.description});

  @override
  final String id;
  @override
  final int outputValue;
  @override
  final String chargingSpeed;
  @override
  final int voltage;
  @override
  final String? description;

  @override
  String toString() {
    return 'PowerOutputEntity(id: $id, outputValue: $outputValue, chargingSpeed: $chargingSpeed, voltage: $voltage, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PowerOutputEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.outputValue, outputValue) ||
                other.outputValue == outputValue) &&
            (identical(other.chargingSpeed, chargingSpeed) ||
                other.chargingSpeed == chargingSpeed) &&
            (identical(other.voltage, voltage) || other.voltage == voltage) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, outputValue, chargingSpeed, voltage, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PowerOutputEntityImplCopyWith<_$PowerOutputEntityImpl> get copyWith =>
      __$$PowerOutputEntityImplCopyWithImpl<_$PowerOutputEntityImpl>(
          this, _$identity);
}

abstract class _PowerOutputEntity implements PowerOutputEntity {
  const factory _PowerOutputEntity(
      {required final String id,
      required final int outputValue,
      required final String chargingSpeed,
      required final int voltage,
      final String? description}) = _$PowerOutputEntityImpl;

  @override
  String get id;
  @override
  int get outputValue;
  @override
  String get chargingSpeed;
  @override
  int get voltage;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$PowerOutputEntityImplCopyWith<_$PowerOutputEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
