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
  double get voltage => throw _privateConstructorUsedError;
  double get amperage => throw _privateConstructorUsedError;
  String? get chargingSpeed => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Create a copy of PowerOutputEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {double outputValue,
      double voltage,
      double amperage,
      String? chargingSpeed,
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

  /// Create a copy of PowerOutputEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outputValue = null,
    Object? voltage = null,
    Object? amperage = null,
    Object? chargingSpeed = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      outputValue: null == outputValue
          ? _value.outputValue
          : outputValue // ignore: cast_nullable_to_non_nullable
              as double,
      voltage: null == voltage
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as double,
      amperage: null == amperage
          ? _value.amperage
          : amperage // ignore: cast_nullable_to_non_nullable
              as double,
      chargingSpeed: freezed == chargingSpeed
          ? _value.chargingSpeed
          : chargingSpeed // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {double outputValue,
      double voltage,
      double amperage,
      String? chargingSpeed,
      String? description});
}

/// @nodoc
class __$$PowerOutputEntityImplCopyWithImpl<$Res>
    extends _$PowerOutputEntityCopyWithImpl<$Res, _$PowerOutputEntityImpl>
    implements _$$PowerOutputEntityImplCopyWith<$Res> {
  __$$PowerOutputEntityImplCopyWithImpl(_$PowerOutputEntityImpl _value,
      $Res Function(_$PowerOutputEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PowerOutputEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outputValue = null,
    Object? voltage = null,
    Object? amperage = null,
    Object? chargingSpeed = freezed,
    Object? description = freezed,
  }) {
    return _then(_$PowerOutputEntityImpl(
      outputValue: null == outputValue
          ? _value.outputValue
          : outputValue // ignore: cast_nullable_to_non_nullable
              as double,
      voltage: null == voltage
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as double,
      amperage: null == amperage
          ? _value.amperage
          : amperage // ignore: cast_nullable_to_non_nullable
              as double,
      chargingSpeed: freezed == chargingSpeed
          ? _value.chargingSpeed
          : chargingSpeed // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {required this.outputValue,
      required this.voltage,
      required this.amperage,
      this.chargingSpeed,
      this.description});

  @override
  final double outputValue;
  @override
  final double voltage;
  @override
  final double amperage;
  @override
  final String? chargingSpeed;
  @override
  final String? description;

  @override
  String toString() {
    return 'PowerOutputEntity(outputValue: $outputValue, voltage: $voltage, amperage: $amperage, chargingSpeed: $chargingSpeed, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PowerOutputEntityImpl &&
            (identical(other.outputValue, outputValue) ||
                other.outputValue == outputValue) &&
            (identical(other.voltage, voltage) || other.voltage == voltage) &&
            (identical(other.amperage, amperage) ||
                other.amperage == amperage) &&
            (identical(other.chargingSpeed, chargingSpeed) ||
                other.chargingSpeed == chargingSpeed) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, outputValue, voltage, amperage, chargingSpeed, description);

  /// Create a copy of PowerOutputEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PowerOutputEntityImplCopyWith<_$PowerOutputEntityImpl> get copyWith =>
      __$$PowerOutputEntityImplCopyWithImpl<_$PowerOutputEntityImpl>(
          this, _$identity);
}

abstract class _PowerOutputEntity implements PowerOutputEntity {
  const factory _PowerOutputEntity(
      {required final double outputValue,
      required final double voltage,
      required final double amperage,
      final String? chargingSpeed,
      final String? description}) = _$PowerOutputEntityImpl;

  @override
  double get outputValue;
  @override
  double get voltage;
  @override
  double get amperage;
  @override
  String? get chargingSpeed;
  @override
  String? get description;

  /// Create a copy of PowerOutputEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PowerOutputEntityImplCopyWith<_$PowerOutputEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
