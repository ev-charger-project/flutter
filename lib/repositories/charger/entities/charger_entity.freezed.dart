// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charger_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChargerEntity {
  String get id => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  String get powerOutputId => throw _privateConstructorUsedError;
  String get powerPlugTypeId => throw _privateConstructorUsedError;
  int get numberOfPort => throw _privateConstructorUsedError;
  String get availabity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChargerEntityCopyWith<ChargerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargerEntityCopyWith<$Res> {
  factory $ChargerEntityCopyWith(
          ChargerEntity value, $Res Function(ChargerEntity) then) =
      _$ChargerEntityCopyWithImpl<$Res, ChargerEntity>;
  @useResult
  $Res call(
      {String id,
      String locationId,
      String powerOutputId,
      String powerPlugTypeId,
      int numberOfPort,
      String availabity});
}

/// @nodoc
class _$ChargerEntityCopyWithImpl<$Res, $Val extends ChargerEntity>
    implements $ChargerEntityCopyWith<$Res> {
  _$ChargerEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$ChargerEntityImplCopyWith<$Res>
    implements $ChargerEntityCopyWith<$Res> {
  factory _$$ChargerEntityImplCopyWith(
          _$ChargerEntityImpl value, $Res Function(_$ChargerEntityImpl) then) =
      __$$ChargerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String locationId,
      String powerOutputId,
      String powerPlugTypeId,
      int numberOfPort,
      String availabity});
}

/// @nodoc
class __$$ChargerEntityImplCopyWithImpl<$Res>
    extends _$ChargerEntityCopyWithImpl<$Res, _$ChargerEntityImpl>
    implements _$$ChargerEntityImplCopyWith<$Res> {
  __$$ChargerEntityImplCopyWithImpl(
      _$ChargerEntityImpl _value, $Res Function(_$ChargerEntityImpl) _then)
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
    return _then(_$ChargerEntityImpl(
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

class _$ChargerEntityImpl implements _ChargerEntity {
  const _$ChargerEntityImpl(
      {required this.id,
      required this.locationId,
      required this.powerOutputId,
      required this.powerPlugTypeId,
      required this.numberOfPort,
      required this.availabity});

  @override
  final String id;
  @override
  final String locationId;
  @override
  final String powerOutputId;
  @override
  final String powerPlugTypeId;
  @override
  final int numberOfPort;
  @override
  final String availabity;

  @override
  String toString() {
    return 'ChargerEntity(id: $id, locationId: $locationId, powerOutputId: $powerOutputId, powerPlugTypeId: $powerPlugTypeId, numberOfPort: $numberOfPort, availabity: $availabity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargerEntityImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, locationId, powerOutputId,
      powerPlugTypeId, numberOfPort, availabity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargerEntityImplCopyWith<_$ChargerEntityImpl> get copyWith =>
      __$$ChargerEntityImplCopyWithImpl<_$ChargerEntityImpl>(this, _$identity);
}

abstract class _ChargerEntity implements ChargerEntity {
  const factory _ChargerEntity(
      {required final String id,
      required final String locationId,
      required final String powerOutputId,
      required final String powerPlugTypeId,
      required final int numberOfPort,
      required final String availabity}) = _$ChargerEntityImpl;

  @override
  String get id;
  @override
  String get locationId;
  @override
  String get powerOutputId;
  @override
  String get powerPlugTypeId;
  @override
  int get numberOfPort;
  @override
  String get availabity;
  @override
  @JsonKey(ignore: true)
  _$$ChargerEntityImplCopyWith<_$ChargerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
