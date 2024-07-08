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

Charger _$ChargerFromJson(Map<String, dynamic> json) {
  return _Charger.fromJson(json);
}

/// @nodoc
mixin _$Charger {
  @JsonKey(name: 'charger_id')
  String get chargerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_id')
  String get locationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'power_output_id')
  String get powerOutputId => throw _privateConstructorUsedError;
  @JsonKey(name: 'power_plug_type_id')
  String get powerPlugTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_ports')
  int get numberOfPorts => throw _privateConstructorUsedError;
  @JsonKey(name: 'availabity')
  String get availabity => throw _privateConstructorUsedError;
  @JsonKey(name: 'installation_date')
  DateTime? get installationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_maintainance_date')
  DateTime? get lastMaintainanceDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargerCopyWith<Charger> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargerCopyWith<$Res> {
  factory $ChargerCopyWith(Charger value, $Res Function(Charger) then) =
      _$ChargerCopyWithImpl<$Res, Charger>;
  @useResult
  $Res call(
      {@JsonKey(name: 'charger_id') String chargerId,
      @JsonKey(name: 'location_id') String locationId,
      @JsonKey(name: 'power_output_id') String powerOutputId,
      @JsonKey(name: 'power_plug_type_id') String powerPlugTypeId,
      @JsonKey(name: 'number_of_ports') int numberOfPorts,
      @JsonKey(name: 'availabity') String availabity,
      @JsonKey(name: 'installation_date') DateTime? installationDate,
      @JsonKey(name: 'last_maintainance_date') DateTime? lastMaintainanceDate});
}

/// @nodoc
class _$ChargerCopyWithImpl<$Res, $Val extends Charger>
    implements $ChargerCopyWith<$Res> {
  _$ChargerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chargerId = null,
    Object? locationId = null,
    Object? powerOutputId = null,
    Object? powerPlugTypeId = null,
    Object? numberOfPorts = null,
    Object? availabity = null,
    Object? installationDate = freezed,
    Object? lastMaintainanceDate = freezed,
  }) {
    return _then(_value.copyWith(
      chargerId: null == chargerId
          ? _value.chargerId
          : chargerId // ignore: cast_nullable_to_non_nullable
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
      numberOfPorts: null == numberOfPorts
          ? _value.numberOfPorts
          : numberOfPorts // ignore: cast_nullable_to_non_nullable
              as int,
      availabity: null == availabity
          ? _value.availabity
          : availabity // ignore: cast_nullable_to_non_nullable
              as String,
      installationDate: freezed == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMaintainanceDate: freezed == lastMaintainanceDate
          ? _value.lastMaintainanceDate
          : lastMaintainanceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChargerImplCopyWith<$Res> implements $ChargerCopyWith<$Res> {
  factory _$$ChargerImplCopyWith(
          _$ChargerImpl value, $Res Function(_$ChargerImpl) then) =
      __$$ChargerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'charger_id') String chargerId,
      @JsonKey(name: 'location_id') String locationId,
      @JsonKey(name: 'power_output_id') String powerOutputId,
      @JsonKey(name: 'power_plug_type_id') String powerPlugTypeId,
      @JsonKey(name: 'number_of_ports') int numberOfPorts,
      @JsonKey(name: 'availabity') String availabity,
      @JsonKey(name: 'installation_date') DateTime? installationDate,
      @JsonKey(name: 'last_maintainance_date') DateTime? lastMaintainanceDate});
}

/// @nodoc
class __$$ChargerImplCopyWithImpl<$Res>
    extends _$ChargerCopyWithImpl<$Res, _$ChargerImpl>
    implements _$$ChargerImplCopyWith<$Res> {
  __$$ChargerImplCopyWithImpl(
      _$ChargerImpl _value, $Res Function(_$ChargerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chargerId = null,
    Object? locationId = null,
    Object? powerOutputId = null,
    Object? powerPlugTypeId = null,
    Object? numberOfPorts = null,
    Object? availabity = null,
    Object? installationDate = freezed,
    Object? lastMaintainanceDate = freezed,
  }) {
    return _then(_$ChargerImpl(
      chargerId: null == chargerId
          ? _value.chargerId
          : chargerId // ignore: cast_nullable_to_non_nullable
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
      numberOfPorts: null == numberOfPorts
          ? _value.numberOfPorts
          : numberOfPorts // ignore: cast_nullable_to_non_nullable
              as int,
      availabity: null == availabity
          ? _value.availabity
          : availabity // ignore: cast_nullable_to_non_nullable
              as String,
      installationDate: freezed == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMaintainanceDate: freezed == lastMaintainanceDate
          ? _value.lastMaintainanceDate
          : lastMaintainanceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChargerImpl implements _Charger {
  const _$ChargerImpl(
      {@JsonKey(name: 'charger_id') required this.chargerId,
      @JsonKey(name: 'location_id') required this.locationId,
      @JsonKey(name: 'power_output_id') required this.powerOutputId,
      @JsonKey(name: 'power_plug_type_id') required this.powerPlugTypeId,
      @JsonKey(name: 'number_of_ports') required this.numberOfPorts,
      @JsonKey(name: 'availabity') required this.availabity,
      @JsonKey(name: 'installation_date') this.installationDate,
      @JsonKey(name: 'last_maintainance_date') this.lastMaintainanceDate});

  factory _$ChargerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChargerImplFromJson(json);

  @override
  @JsonKey(name: 'charger_id')
  final String chargerId;
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
  @JsonKey(name: 'number_of_ports')
  final int numberOfPorts;
  @override
  @JsonKey(name: 'availabity')
  final String availabity;
  @override
  @JsonKey(name: 'installation_date')
  final DateTime? installationDate;
  @override
  @JsonKey(name: 'last_maintainance_date')
  final DateTime? lastMaintainanceDate;

  @override
  String toString() {
    return 'Charger(chargerId: $chargerId, locationId: $locationId, powerOutputId: $powerOutputId, powerPlugTypeId: $powerPlugTypeId, numberOfPorts: $numberOfPorts, availabity: $availabity, installationDate: $installationDate, lastMaintainanceDate: $lastMaintainanceDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargerImpl &&
            (identical(other.chargerId, chargerId) ||
                other.chargerId == chargerId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.powerOutputId, powerOutputId) ||
                other.powerOutputId == powerOutputId) &&
            (identical(other.powerPlugTypeId, powerPlugTypeId) ||
                other.powerPlugTypeId == powerPlugTypeId) &&
            (identical(other.numberOfPorts, numberOfPorts) ||
                other.numberOfPorts == numberOfPorts) &&
            (identical(other.availabity, availabity) ||
                other.availabity == availabity) &&
            (identical(other.installationDate, installationDate) ||
                other.installationDate == installationDate) &&
            (identical(other.lastMaintainanceDate, lastMaintainanceDate) ||
                other.lastMaintainanceDate == lastMaintainanceDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      chargerId,
      locationId,
      powerOutputId,
      powerPlugTypeId,
      numberOfPorts,
      availabity,
      installationDate,
      lastMaintainanceDate);

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

abstract class _Charger implements Charger {
  const factory _Charger(
      {@JsonKey(name: 'charger_id') required final String chargerId,
      @JsonKey(name: 'location_id') required final String locationId,
      @JsonKey(name: 'power_output_id') required final String powerOutputId,
      @JsonKey(name: 'power_plug_type_id')
      required final String powerPlugTypeId,
      @JsonKey(name: 'number_of_ports') required final int numberOfPorts,
      @JsonKey(name: 'availabity') required final String availabity,
      @JsonKey(name: 'installation_date') final DateTime? installationDate,
      @JsonKey(name: 'last_maintainance_date')
      final DateTime? lastMaintainanceDate}) = _$ChargerImpl;

  factory _Charger.fromJson(Map<String, dynamic> json) = _$ChargerImpl.fromJson;

  @override
  @JsonKey(name: 'charger_id')
  String get chargerId;
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
  @JsonKey(name: 'number_of_ports')
  int get numberOfPorts;
  @override
  @JsonKey(name: 'availabity')
  String get availabity;
  @override
  @JsonKey(name: 'installation_date')
  DateTime? get installationDate;
  @override
  @JsonKey(name: 'last_maintainance_date')
  DateTime? get lastMaintainanceDate;
  @override
  @JsonKey(ignore: true)
  _$$ChargerImplCopyWith<_$ChargerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
