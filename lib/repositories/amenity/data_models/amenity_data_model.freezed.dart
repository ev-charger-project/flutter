// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'amenity_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AmenityDataModel _$AmenityDataModelFromJson(Map<String, dynamic> json) {
  return _Amenity.fromJson(json);
}

/// @nodoc
mixin _$AmenityDataModel {
  @JsonKey(name: 'amenities_types')
  String get amenity => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmenityDataModelCopyWith<AmenityDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmenityDataModelCopyWith<$Res> {
  factory $AmenityDataModelCopyWith(
          AmenityDataModel value, $Res Function(AmenityDataModel) then) =
      _$AmenityDataModelCopyWithImpl<$Res, AmenityDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'amenities_types') String amenity,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class _$AmenityDataModelCopyWithImpl<$Res, $Val extends AmenityDataModel>
    implements $AmenityDataModelCopyWith<$Res> {
  _$AmenityDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$AmenityImplCopyWith<$Res>
    implements $AmenityDataModelCopyWith<$Res> {
  factory _$$AmenityImplCopyWith(
          _$AmenityImpl value, $Res Function(_$AmenityImpl) then) =
      __$$AmenityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'amenities_types') String amenity,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class __$$AmenityImplCopyWithImpl<$Res>
    extends _$AmenityDataModelCopyWithImpl<$Res, _$AmenityImpl>
    implements _$$AmenityImplCopyWith<$Res> {
  __$$AmenityImplCopyWithImpl(
      _$AmenityImpl _value, $Res Function(_$AmenityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amenity = null,
    Object? imageUrl = null,
  }) {
    return _then(_$AmenityImpl(
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
@JsonSerializable()
class _$AmenityImpl implements _Amenity {
  const _$AmenityImpl(
      {@JsonKey(name: 'amenities_types') required this.amenity,
      @JsonKey(name: 'image_url') this.imageUrl = ''});

  factory _$AmenityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmenityImplFromJson(json);

  @override
  @JsonKey(name: 'amenities_types')
  final String amenity;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  @override
  String toString() {
    return 'AmenityDataModel(amenity: $amenity, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmenityImpl &&
            (identical(other.amenity, amenity) || other.amenity == amenity) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amenity, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmenityImplCopyWith<_$AmenityImpl> get copyWith =>
      __$$AmenityImplCopyWithImpl<_$AmenityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AmenityImplToJson(
      this,
    );
  }
}

abstract class _Amenity implements AmenityDataModel {
  const factory _Amenity(
      {@JsonKey(name: 'amenities_types') required final String amenity,
      @JsonKey(name: 'image_url') final String imageUrl}) = _$AmenityImpl;

  factory _Amenity.fromJson(Map<String, dynamic> json) = _$AmenityImpl.fromJson;

  @override
  @JsonKey(name: 'amenities_types')
  String get amenity;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$AmenityImplCopyWith<_$AmenityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
