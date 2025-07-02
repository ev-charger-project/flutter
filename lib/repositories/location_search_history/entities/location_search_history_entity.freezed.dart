// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_search_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationSearchHistoryEntity {
  String? get id => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  LocationDataModel get location => throw _privateConstructorUsedError;

  /// Create a copy of LocationSearchHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationSearchHistoryEntityCopyWith<LocationSearchHistoryEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSearchHistoryEntityCopyWith<$Res> {
  factory $LocationSearchHistoryEntityCopyWith(
          LocationSearchHistoryEntity value,
          $Res Function(LocationSearchHistoryEntity) then) =
      _$LocationSearchHistoryEntityCopyWithImpl<$Res,
          LocationSearchHistoryEntity>;
  @useResult
  $Res call({String? id, String updatedAt, LocationDataModel location});

  $LocationDataModelCopyWith<$Res> get location;
}

/// @nodoc
class _$LocationSearchHistoryEntityCopyWithImpl<$Res,
        $Val extends LocationSearchHistoryEntity>
    implements $LocationSearchHistoryEntityCopyWith<$Res> {
  _$LocationSearchHistoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationSearchHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDataModel,
    ) as $Val);
  }

  /// Create a copy of LocationSearchHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDataModelCopyWith<$Res> get location {
    return $LocationDataModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationSearchHistoryEntityImplCopyWith<$Res>
    implements $LocationSearchHistoryEntityCopyWith<$Res> {
  factory _$$LocationSearchHistoryEntityImplCopyWith(
          _$LocationSearchHistoryEntityImpl value,
          $Res Function(_$LocationSearchHistoryEntityImpl) then) =
      __$$LocationSearchHistoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String updatedAt, LocationDataModel location});

  @override
  $LocationDataModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$LocationSearchHistoryEntityImplCopyWithImpl<$Res>
    extends _$LocationSearchHistoryEntityCopyWithImpl<$Res,
        _$LocationSearchHistoryEntityImpl>
    implements _$$LocationSearchHistoryEntityImplCopyWith<$Res> {
  __$$LocationSearchHistoryEntityImplCopyWithImpl(
      _$LocationSearchHistoryEntityImpl _value,
      $Res Function(_$LocationSearchHistoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationSearchHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = null,
    Object? location = null,
  }) {
    return _then(_$LocationSearchHistoryEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDataModel,
    ));
  }
}

/// @nodoc

class _$LocationSearchHistoryEntityImpl
    implements _LocationSearchHistoryEntity {
  const _$LocationSearchHistoryEntityImpl(
      {this.id, required this.updatedAt, required this.location});

  @override
  final String? id;
  @override
  final String updatedAt;
  @override
  final LocationDataModel location;

  @override
  String toString() {
    return 'LocationSearchHistoryEntity(id: $id, updatedAt: $updatedAt, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationSearchHistoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, updatedAt, location);

  /// Create a copy of LocationSearchHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationSearchHistoryEntityImplCopyWith<_$LocationSearchHistoryEntityImpl>
      get copyWith => __$$LocationSearchHistoryEntityImplCopyWithImpl<
          _$LocationSearchHistoryEntityImpl>(this, _$identity);
}

abstract class _LocationSearchHistoryEntity
    implements LocationSearchHistoryEntity {
  const factory _LocationSearchHistoryEntity(
          {final String? id,
          required final String updatedAt,
          required final LocationDataModel location}) =
      _$LocationSearchHistoryEntityImpl;

  @override
  String? get id;
  @override
  String get updatedAt;
  @override
  LocationDataModel get location;

  /// Create a copy of LocationSearchHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationSearchHistoryEntityImplCopyWith<_$LocationSearchHistoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
