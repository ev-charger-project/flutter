// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charger_marker_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChargerMarkerEntity {
  String get id => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  /// Create a copy of ChargerMarkerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChargerMarkerEntityCopyWith<ChargerMarkerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargerMarkerEntityCopyWith<$Res> {
  factory $ChargerMarkerEntityCopyWith(
          ChargerMarkerEntity value, $Res Function(ChargerMarkerEntity) then) =
      _$ChargerMarkerEntityCopyWithImpl<$Res, ChargerMarkerEntity>;
  @useResult
  $Res call({String id, double latitude, double longitude});
}

/// @nodoc
class _$ChargerMarkerEntityCopyWithImpl<$Res, $Val extends ChargerMarkerEntity>
    implements $ChargerMarkerEntityCopyWith<$Res> {
  _$ChargerMarkerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChargerMarkerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChargerMarkerEntityImplCopyWith<$Res>
    implements $ChargerMarkerEntityCopyWith<$Res> {
  factory _$$ChargerMarkerEntityImplCopyWith(_$ChargerMarkerEntityImpl value,
          $Res Function(_$ChargerMarkerEntityImpl) then) =
      __$$ChargerMarkerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double latitude, double longitude});
}

/// @nodoc
class __$$ChargerMarkerEntityImplCopyWithImpl<$Res>
    extends _$ChargerMarkerEntityCopyWithImpl<$Res, _$ChargerMarkerEntityImpl>
    implements _$$ChargerMarkerEntityImplCopyWith<$Res> {
  __$$ChargerMarkerEntityImplCopyWithImpl(_$ChargerMarkerEntityImpl _value,
      $Res Function(_$ChargerMarkerEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargerMarkerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$ChargerMarkerEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChargerMarkerEntityImpl implements _ChargerMarkerEntity {
  const _$ChargerMarkerEntityImpl(
      {required this.id, required this.latitude, required this.longitude});

  @override
  final String id;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'ChargerMarkerEntity(id: $id, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargerMarkerEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, latitude, longitude);

  /// Create a copy of ChargerMarkerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargerMarkerEntityImplCopyWith<_$ChargerMarkerEntityImpl> get copyWith =>
      __$$ChargerMarkerEntityImplCopyWithImpl<_$ChargerMarkerEntityImpl>(
          this, _$identity);
}

abstract class _ChargerMarkerEntity implements ChargerMarkerEntity {
  const factory _ChargerMarkerEntity(
      {required final String id,
      required final double latitude,
      required final double longitude}) = _$ChargerMarkerEntityImpl;

  @override
  String get id;
  @override
  double get latitude;
  @override
  double get longitude;

  /// Create a copy of ChargerMarkerEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargerMarkerEntityImplCopyWith<_$ChargerMarkerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
