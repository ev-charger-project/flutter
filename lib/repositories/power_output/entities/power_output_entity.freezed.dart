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
  double get outputValue => throw _privateConstructorUsedError;
  String get chargingSpeed => throw _privateConstructorUsedError;
  double get voltage => throw _privateConstructorUsedError;

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
  $Res call({double outputValue, String chargingSpeed, double voltage});
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
    Object? outputValue = null,
    Object? chargingSpeed = null,
    Object? voltage = null,
  }) {
    return _then(_value.copyWith(
      outputValue: null == outputValue
          ? _value.outputValue
          : outputValue // ignore: cast_nullable_to_non_nullable
              as double,
      chargingSpeed: null == chargingSpeed
          ? _value.chargingSpeed
          : chargingSpeed // ignore: cast_nullable_to_non_nullable
              as String,
      voltage: null == voltage
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as double,
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
  $Res call({double outputValue, String chargingSpeed, double voltage});
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
    Object? outputValue = null,
    Object? chargingSpeed = null,
    Object? voltage = null,
  }) {
    return _then(_$PowerOutputEntityImpl(
      outputValue: null == outputValue
          ? _value.outputValue
          : outputValue // ignore: cast_nullable_to_non_nullable
              as double,
      chargingSpeed: null == chargingSpeed
          ? _value.chargingSpeed
          : chargingSpeed // ignore: cast_nullable_to_non_nullable
              as String,
      voltage: null == voltage
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PowerOutputEntityImpl implements _PowerOutputEntity {
  const _$PowerOutputEntityImpl(
      {required this.outputValue,
      required this.chargingSpeed,
      required this.voltage});

  @override
  final double outputValue;
  @override
  final String chargingSpeed;
  @override
  final double voltage;

  @override
  String toString() {
    return 'PowerOutputEntity(outputValue: $outputValue, chargingSpeed: $chargingSpeed, voltage: $voltage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PowerOutputEntityImpl &&
            (identical(other.outputValue, outputValue) ||
                other.outputValue == outputValue) &&
            (identical(other.chargingSpeed, chargingSpeed) ||
                other.chargingSpeed == chargingSpeed) &&
            (identical(other.voltage, voltage) || other.voltage == voltage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, outputValue, chargingSpeed, voltage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PowerOutputEntityImplCopyWith<_$PowerOutputEntityImpl> get copyWith =>
      __$$PowerOutputEntityImplCopyWithImpl<_$PowerOutputEntityImpl>(
          this, _$identity);
}

abstract class _PowerOutputEntity implements PowerOutputEntity {
  const factory _PowerOutputEntity(
      {required final double outputValue,
      required final String chargingSpeed,
      required final double voltage}) = _$PowerOutputEntityImpl;

  @override
  double get outputValue;
  @override
  String get chargingSpeed;
  @override
  double get voltage;
  @override
  @JsonKey(ignore: true)
  _$$PowerOutputEntityImplCopyWith<_$PowerOutputEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
