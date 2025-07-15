// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'amenity_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AmenityEntity {
  String get amenity => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  /// Create a copy of AmenityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AmenityEntityCopyWith<AmenityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmenityEntityCopyWith<$Res> {
  factory $AmenityEntityCopyWith(
          AmenityEntity value, $Res Function(AmenityEntity) then) =
      _$AmenityEntityCopyWithImpl<$Res, AmenityEntity>;
  @useResult
  $Res call({String amenity, String imageUrl});
}

/// @nodoc
class _$AmenityEntityCopyWithImpl<$Res, $Val extends AmenityEntity>
    implements $AmenityEntityCopyWith<$Res> {
  _$AmenityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AmenityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amenity = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      amenity: null == amenity
          ? _value.amenity
          : amenity // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmenityEntityImplCopyWith<$Res>
    implements $AmenityEntityCopyWith<$Res> {
  factory _$$AmenityEntityImplCopyWith(
          _$AmenityEntityImpl value, $Res Function(_$AmenityEntityImpl) then) =
      __$$AmenityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String amenity, String imageUrl});
}

/// @nodoc
class __$$AmenityEntityImplCopyWithImpl<$Res>
    extends _$AmenityEntityCopyWithImpl<$Res, _$AmenityEntityImpl>
    implements _$$AmenityEntityImplCopyWith<$Res> {
  __$$AmenityEntityImplCopyWithImpl(
      _$AmenityEntityImpl _value, $Res Function(_$AmenityEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AmenityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amenity = null,
    Object? imageUrl = null,
  }) {
    return _then(_$AmenityEntityImpl(
      amenity: null == amenity
          ? _value.amenity
          : amenity // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AmenityEntityImpl implements _AmenityEntity {
  const _$AmenityEntityImpl({required this.amenity, required this.imageUrl});

  @override
  final String amenity;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'AmenityEntity(amenity: $amenity, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmenityEntityImpl &&
            (identical(other.amenity, amenity) || other.amenity == amenity) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amenity, imageUrl);

  /// Create a copy of AmenityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AmenityEntityImplCopyWith<_$AmenityEntityImpl> get copyWith =>
      __$$AmenityEntityImplCopyWithImpl<_$AmenityEntityImpl>(this, _$identity);
}

abstract class _AmenityEntity implements AmenityEntity {
  const factory _AmenityEntity(
      {required final String amenity,
      required final String imageUrl}) = _$AmenityEntityImpl;

  @override
  String get amenity;
  @override
  String get imageUrl;

  /// Create a copy of AmenityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AmenityEntityImplCopyWith<_$AmenityEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
