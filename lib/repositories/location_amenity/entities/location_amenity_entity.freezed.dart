// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_amenity_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationAmenityEntity {
  AmenityEntity get amenities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationAmenityEntityCopyWith<LocationAmenityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationAmenityEntityCopyWith<$Res> {
  factory $LocationAmenityEntityCopyWith(LocationAmenityEntity value,
          $Res Function(LocationAmenityEntity) then) =
      _$LocationAmenityEntityCopyWithImpl<$Res, LocationAmenityEntity>;
  @useResult
  $Res call({AmenityEntity amenities});

  $AmenityEntityCopyWith<$Res> get amenities;
}

/// @nodoc
class _$LocationAmenityEntityCopyWithImpl<$Res,
        $Val extends LocationAmenityEntity>
    implements $LocationAmenityEntityCopyWith<$Res> {
  _$LocationAmenityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amenities = null,
  }) {
    return _then(_value.copyWith(
      amenities: null == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as AmenityEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AmenityEntityCopyWith<$Res> get amenities {
    return $AmenityEntityCopyWith<$Res>(_value.amenities, (value) {
      return _then(_value.copyWith(amenities: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationAmenityEntityImplCopyWith<$Res>
    implements $LocationAmenityEntityCopyWith<$Res> {
  factory _$$LocationAmenityEntityImplCopyWith(
          _$LocationAmenityEntityImpl value,
          $Res Function(_$LocationAmenityEntityImpl) then) =
      __$$LocationAmenityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AmenityEntity amenities});

  @override
  $AmenityEntityCopyWith<$Res> get amenities;
}

/// @nodoc
class __$$LocationAmenityEntityImplCopyWithImpl<$Res>
    extends _$LocationAmenityEntityCopyWithImpl<$Res,
        _$LocationAmenityEntityImpl>
    implements _$$LocationAmenityEntityImplCopyWith<$Res> {
  __$$LocationAmenityEntityImplCopyWithImpl(_$LocationAmenityEntityImpl _value,
      $Res Function(_$LocationAmenityEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amenities = null,
  }) {
    return _then(_$LocationAmenityEntityImpl(
      amenities: null == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as AmenityEntity,
    ));
  }
}

/// @nodoc

class _$LocationAmenityEntityImpl implements _LocationAmenityEntity {
  const _$LocationAmenityEntityImpl({required this.amenities});

  @override
  final AmenityEntity amenities;

  @override
  String toString() {
    return 'LocationAmenityEntity(amenities: $amenities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationAmenityEntityImpl &&
            (identical(other.amenities, amenities) ||
                other.amenities == amenities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amenities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationAmenityEntityImplCopyWith<_$LocationAmenityEntityImpl>
      get copyWith => __$$LocationAmenityEntityImplCopyWithImpl<
          _$LocationAmenityEntityImpl>(this, _$identity);
}

abstract class _LocationAmenityEntity implements LocationAmenityEntity {
  const factory _LocationAmenityEntity(
      {required final AmenityEntity amenities}) = _$LocationAmenityEntityImpl;

  @override
  AmenityEntity get amenities;
  @override
  @JsonKey(ignore: true)
  _$$LocationAmenityEntityImplCopyWith<_$LocationAmenityEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
