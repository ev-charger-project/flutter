// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charger_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChargerDataModel _$ChargerDataModelFromJson(Map<String, dynamic> json) {
  return _Charger.fromJson(json);
}

/// @nodoc
mixin _$ChargerDataModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_id')
  String get locationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'power_output_id')
  String get powerOutputId => throw _privateConstructorUsedError;
  @JsonKey(name: 'power_plug_type_id')
  String get powerPlugTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_port')
  int get numberOfPort => throw _privateConstructorUsedError;
  @JsonKey(name: 'availabity')
  String get availabity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargerDataModelCopyWith<ChargerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargerDataModelCopyWith<$Res> {
  factory $ChargerDataModelCopyWith(
          ChargerDataModel value, $Res Function(ChargerDataModel) then) =
      _$ChargerDataModelCopyWithImpl<$Res, ChargerDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'location_id') String locationId,
      @JsonKey(name: 'power_output_id') String powerOutputId,
      @JsonKey(name: 'power_plug_type_id') String powerPlugTypeId,
      @JsonKey(name: 'number_of_port') int numberOfPort,
      @JsonKey(name: 'availabity') String availabity});
}

/// @nodoc
class _$ChargerDataModelCopyWithImpl<$Res, $Val extends ChargerDataModel>
    implements $ChargerDataModelCopyWith<$Res> {
  _$ChargerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? locationId = null,
    Object? powerOutputId = null,
    Object? powerPlugTypeId = null,
    Object? numberOfPort = null,
    Object? availabity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      powerOutputId: null == powerOutputId
          ? _value.powerOutputId
          : powerOutputId // ignore: cast_nullable_to_non_nullable
              as String,
      powerPlugTypeId: null == powerPlugTypeId
          ? _value.powerPlugTypeId
          : powerPlugTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfPort: null == numberOfPort
          ? _value.numberOfPort
          : numberOfPort // ignore: cast_nullable_to_non_nullable
              as int,
      availabity: null == availabity
          ? _value.availabity
          : availabity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChargerImplCopyWith<$Res>
    implements $ChargerDataModelCopyWith<$Res> {
  factory _$$ChargerImplCopyWith(
          _$ChargerImpl value, $Res Function(_$ChargerImpl) then) =
      __$$ChargerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'location_id') String locationId,
      @JsonKey(name: 'power_output_id') String powerOutputId,
      @JsonKey(name: 'power_plug_type_id') String powerPlugTypeId,
      @JsonKey(name: 'number_of_port') int numberOfPort,
      @JsonKey(name: 'availabity') String availabity});
}

/// @nodoc
class __$$ChargerImplCopyWithImpl<$Res>
    extends _$ChargerDataModelCopyWithImpl<$Res, _$ChargerImpl>
    implements _$$ChargerImplCopyWith<$Res> {
  __$$ChargerImplCopyWithImpl(
      _$ChargerImpl _value, $Res Function(_$ChargerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? locationId = null,
    Object? powerOutputId = null,
    Object? powerPlugTypeId = null,
    Object? numberOfPort = null,
    Object? availabity = null,
  }) {
    return _then(_$ChargerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      powerOutputId: null == powerOutputId
          ? _value.powerOutputId
          : powerOutputId // ignore: cast_nullable_to_non_nullable
              as String,
      powerPlugTypeId: null == powerPlugTypeId
          ? _value.powerPlugTypeId
          : powerPlugTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfPort: null == numberOfPort
          ? _value.numberOfPort
          : numberOfPort // ignore: cast_nullable_to_non_nullable
              as int,
      availabity: null == availabity
          ? _value.availabity
          : availabity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChargerImpl implements _Charger {
  const _$ChargerImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'location_id') required this.locationId,
      @JsonKey(name: 'power_output_id') required this.powerOutputId,
      @JsonKey(name: 'power_plug_type_id') required this.powerPlugTypeId,
      @JsonKey(name: 'number_of_port') required this.numberOfPort,
      @JsonKey(name: 'availabity') required this.availabity});

  factory _$ChargerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChargerImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'location_id')
  final String locationId;
  @override
  @JsonKey(name: 'power_output_id')
  final String powerOutputId;
  @override
  @JsonKey(name: 'power_plug_type_id')
  final String powerPlugTypeId;
  @override
  @JsonKey(name: 'number_of_port')
  final int numberOfPort;
  @override
  @JsonKey(name: 'availabity')
  final String availabity;

  @override
  String toString() {
    return 'ChargerDataModel(id: $id, locationId: $locationId, powerOutputId: $powerOutputId, powerPlugTypeId: $powerPlugTypeId, numberOfPort: $numberOfPort, availabity: $availabity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.powerOutputId, powerOutputId) ||
                other.powerOutputId == powerOutputId) &&
            (identical(other.powerPlugTypeId, powerPlugTypeId) ||
                other.powerPlugTypeId == powerPlugTypeId) &&
            (identical(other.numberOfPort, numberOfPort) ||
                other.numberOfPort == numberOfPort) &&
            (identical(other.availabity, availabity) ||
                other.availabity == availabity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, locationId, powerOutputId,
      powerPlugTypeId, numberOfPort, availabity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargerImplCopyWith<_$ChargerImpl> get copyWith =>
      __$$ChargerImplCopyWithImpl<_$ChargerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChargerImplToJson(
      this,
    );
  }
}

abstract class _Charger implements ChargerDataModel {
  const factory _Charger(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'location_id') required final String locationId,
          @JsonKey(name: 'power_output_id') required final String powerOutputId,
          @JsonKey(name: 'power_plug_type_id')
          required final String powerPlugTypeId,
          @JsonKey(name: 'number_of_port') required final int numberOfPort,
          @JsonKey(name: 'availabity') required final String availabity}) =
      _$ChargerImpl;

  factory _Charger.fromJson(Map<String, dynamic> json) = _$ChargerImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'location_id')
  String get locationId;
  @override
  @JsonKey(name: 'power_output_id')
  String get powerOutputId;
  @override
  @JsonKey(name: 'power_plug_type_id')
  String get powerPlugTypeId;
  @override
  @JsonKey(name: 'number_of_port')
  int get numberOfPort;
  @override
  @JsonKey(name: 'availabity')
  String get availabity;
  @override
  @JsonKey(ignore: true)
  _$$ChargerImplCopyWith<_$ChargerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
