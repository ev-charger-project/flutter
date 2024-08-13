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
  String get amenity_image_url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AmenityEntityCopyWith<AmenityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmenityEntityCopyWith<$Res> {
  factory $AmenityEntityCopyWith(
          AmenityEntity value, $Res Function(AmenityEntity) then) =
      _$AmenityEntityCopyWithImpl<$Res, AmenityEntity>;
  @useResult
  $Res call({String amenity, String amenity_image_url});
}

/// @nodoc
class _$AmenityEntityCopyWithImpl<$Res, $Val extends AmenityEntity>
    implements $AmenityEntityCopyWith<$Res> {
  _$AmenityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amenity = null,
    Object? amenity_image_url = null,
  }) {
    return _then(_value.copyWith(
      amenity: null == amenity
          ? _value.amenity
          : amenity // ignore: cast_nullable_to_non_nullable
              as String,
      amenity_image_url: null == amenity_image_url
          ? _value.amenity_image_url
          : amenity_image_url // ignore: cast_nullable_to_non_nullable
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
  $Res call({String amenity, String amenity_image_url});
}

/// @nodoc
class __$$AmenityEntityImplCopyWithImpl<$Res>
    extends _$AmenityEntityCopyWithImpl<$Res, _$AmenityEntityImpl>
    implements _$$AmenityEntityImplCopyWith<$Res> {
  __$$AmenityEntityImplCopyWithImpl(
      _$AmenityEntityImpl _value, $Res Function(_$AmenityEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amenity = null,
    Object? amenity_image_url = null,
  }) {
    return _then(_$AmenityEntityImpl(
      amenity: null == amenity
          ? _value.amenity
          : amenity // ignore: cast_nullable_to_non_nullable
              as String,
      amenity_image_url: null == amenity_image_url
          ? _value.amenity_image_url
          : amenity_image_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AmenityEntityImpl implements _AmenityEntity {
  const _$AmenityEntityImpl(
      {required this.amenity, required this.amenity_image_url});

  @override
  final String amenity;
  @override
  final String amenity_image_url;

  @override
  String toString() {
    return 'AmenityEntity(amenity: $amenity, amenity_image_url: $amenity_image_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmenityEntityImpl &&
            (identical(other.amenity, amenity) || other.amenity == amenity) &&
            (identical(other.amenity_image_url, amenity_image_url) ||
                other.amenity_image_url == amenity_image_url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amenity, amenity_image_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmenityEntityImplCopyWith<_$AmenityEntityImpl> get copyWith =>
      __$$AmenityEntityImplCopyWithImpl<_$AmenityEntityImpl>(this, _$identity);
}

abstract class _AmenityEntity implements AmenityEntity {
  const factory _AmenityEntity(
      {required final String amenity,
      required final String amenity_image_url}) = _$AmenityEntityImpl;

  @override
  String get amenity;
  @override
  String get amenity_image_url;
  @override
  @JsonKey(ignore: true)
  _$$AmenityEntityImplCopyWith<_$AmenityEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
