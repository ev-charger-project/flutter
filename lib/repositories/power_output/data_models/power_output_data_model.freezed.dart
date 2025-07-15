// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'power_output_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PowerOutputDataModel _$PowerOutputDataModelFromJson(Map<String, dynamic> json) {
  return _PowerOutputDataModel.fromJson(json);
}

/// @nodoc
mixin _$PowerOutputDataModel {
  @JsonKey(name: 'output_value')
  double get outputValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'voltage')
  double get voltage => throw _privateConstructorUsedError;
  @JsonKey(name: 'amperage')
  double get amperage => throw _privateConstructorUsedError;
  @JsonKey(name: 'charging_speed')
  String? get chargingSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this PowerOutputDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PowerOutputDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PowerOutputDataModelCopyWith<PowerOutputDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PowerOutputDataModelCopyWith<$Res> {
  factory $PowerOutputDataModelCopyWith(PowerOutputDataModel value,
          $Res Function(PowerOutputDataModel) then) =
      _$PowerOutputDataModelCopyWithImpl<$Res, PowerOutputDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'output_value') double outputValue,
      @JsonKey(name: 'voltage') double voltage,
      @JsonKey(name: 'amperage') double amperage,
      @JsonKey(name: 'charging_speed') String? chargingSpeed,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$PowerOutputDataModelCopyWithImpl<$Res,
        $Val extends PowerOutputDataModel>
    implements $PowerOutputDataModelCopyWith<$Res> {
  _$PowerOutputDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PowerOutputDataModel
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
abstract class _$$PowerOutputDataModelImplCopyWith<$Res>
    implements $PowerOutputDataModelCopyWith<$Res> {
  factory _$$PowerOutputDataModelImplCopyWith(_$PowerOutputDataModelImpl value,
          $Res Function(_$PowerOutputDataModelImpl) then) =
      __$$PowerOutputDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'output_value') double outputValue,
      @JsonKey(name: 'voltage') double voltage,
      @JsonKey(name: 'amperage') double amperage,
      @JsonKey(name: 'charging_speed') String? chargingSpeed,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$PowerOutputDataModelImplCopyWithImpl<$Res>
    extends _$PowerOutputDataModelCopyWithImpl<$Res, _$PowerOutputDataModelImpl>
    implements _$$PowerOutputDataModelImplCopyWith<$Res> {
  __$$PowerOutputDataModelImplCopyWithImpl(_$PowerOutputDataModelImpl _value,
      $Res Function(_$PowerOutputDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PowerOutputDataModel
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
    return _then(_$PowerOutputDataModelImpl(
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
@JsonSerializable()
class _$PowerOutputDataModelImpl implements _PowerOutputDataModel {
  const _$PowerOutputDataModelImpl(
      {@JsonKey(name: 'output_value') required this.outputValue,
      @JsonKey(name: 'voltage') required this.voltage,
      @JsonKey(name: 'amperage') required this.amperage,
      @JsonKey(name: 'charging_speed') this.chargingSpeed,
      @JsonKey(name: 'description') this.description});

  factory _$PowerOutputDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PowerOutputDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'output_value')
  final double outputValue;
  @override
  @JsonKey(name: 'voltage')
  final double voltage;
  @override
  @JsonKey(name: 'amperage')
  final double amperage;
  @override
  @JsonKey(name: 'charging_speed')
  final String? chargingSpeed;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'PowerOutputDataModel(outputValue: $outputValue, voltage: $voltage, amperage: $amperage, chargingSpeed: $chargingSpeed, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PowerOutputDataModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, outputValue, voltage, amperage, chargingSpeed, description);

  /// Create a copy of PowerOutputDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PowerOutputDataModelImplCopyWith<_$PowerOutputDataModelImpl>
      get copyWith =>
          __$$PowerOutputDataModelImplCopyWithImpl<_$PowerOutputDataModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PowerOutputDataModelImplToJson(
      this,
    );
  }
}

abstract class _PowerOutputDataModel implements PowerOutputDataModel {
  const factory _PowerOutputDataModel(
          {@JsonKey(name: 'output_value') required final double outputValue,
          @JsonKey(name: 'voltage') required final double voltage,
          @JsonKey(name: 'amperage') required final double amperage,
          @JsonKey(name: 'charging_speed') final String? chargingSpeed,
          @JsonKey(name: 'description') final String? description}) =
      _$PowerOutputDataModelImpl;

  factory _PowerOutputDataModel.fromJson(Map<String, dynamic> json) =
      _$PowerOutputDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'output_value')
  double get outputValue;
  @override
  @JsonKey(name: 'voltage')
  double get voltage;
  @override
  @JsonKey(name: 'amperage')
  double get amperage;
  @override
  @JsonKey(name: 'charging_speed')
  String? get chargingSpeed;
  @override
  @JsonKey(name: 'description')
  String? get description;

  /// Create a copy of PowerOutputDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PowerOutputDataModelImplCopyWith<_$PowerOutputDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
