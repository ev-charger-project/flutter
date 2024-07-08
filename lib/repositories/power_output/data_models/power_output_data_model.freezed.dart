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
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'output_value')
  int get outputValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'charging_speed')
  String get chargingSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'voltage')
  int get voltage => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'output_value') int outputValue,
      @JsonKey(name: 'charging_speed') String chargingSpeed,
      @JsonKey(name: 'voltage') int voltage,
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
abstract class _$$PowerOutputDataModelImplCopyWith<$Res>
    implements $PowerOutputDataModelCopyWith<$Res> {
  factory _$$PowerOutputDataModelImplCopyWith(_$PowerOutputDataModelImpl value,
          $Res Function(_$PowerOutputDataModelImpl) then) =
      __$$PowerOutputDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'output_value') int outputValue,
      @JsonKey(name: 'charging_speed') String chargingSpeed,
      @JsonKey(name: 'voltage') int voltage,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$PowerOutputDataModelImplCopyWithImpl<$Res>
    extends _$PowerOutputDataModelCopyWithImpl<$Res, _$PowerOutputDataModelImpl>
    implements _$$PowerOutputDataModelImplCopyWith<$Res> {
  __$$PowerOutputDataModelImplCopyWithImpl(_$PowerOutputDataModelImpl _value,
      $Res Function(_$PowerOutputDataModelImpl) _then)
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
    return _then(_$PowerOutputDataModelImpl(
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
@JsonSerializable()
class _$PowerOutputDataModelImpl implements _PowerOutputDataModel {
  const _$PowerOutputDataModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'output_value') required this.outputValue,
      @JsonKey(name: 'charging_speed') required this.chargingSpeed,
      @JsonKey(name: 'voltage') required this.voltage,
      @JsonKey(name: 'description') this.description});

  factory _$PowerOutputDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PowerOutputDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'output_value')
  final int outputValue;
  @override
  @JsonKey(name: 'charging_speed')
  final String chargingSpeed;
  @override
  @JsonKey(name: 'voltage')
  final int voltage;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'PowerOutputDataModel(id: $id, outputValue: $outputValue, chargingSpeed: $chargingSpeed, voltage: $voltage, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PowerOutputDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.outputValue, outputValue) ||
                other.outputValue == outputValue) &&
            (identical(other.chargingSpeed, chargingSpeed) ||
                other.chargingSpeed == chargingSpeed) &&
            (identical(other.voltage, voltage) || other.voltage == voltage) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, outputValue, chargingSpeed, voltage, description);

  @JsonKey(ignore: true)
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
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'output_value') required final int outputValue,
          @JsonKey(name: 'charging_speed') required final String chargingSpeed,
          @JsonKey(name: 'voltage') required final int voltage,
          @JsonKey(name: 'description') final String? description}) =
      _$PowerOutputDataModelImpl;

  factory _PowerOutputDataModel.fromJson(Map<String, dynamic> json) =
      _$PowerOutputDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'output_value')
  int get outputValue;
  @override
  @JsonKey(name: 'charging_speed')
  String get chargingSpeed;
  @override
  @JsonKey(name: 'voltage')
  int get voltage;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$PowerOutputDataModelImplCopyWith<_$PowerOutputDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
