// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggestion_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SuggestionEntity {
  String get locationId => throw _privateConstructorUsedError;
  String get locationName => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuggestionEntityCopyWith<SuggestionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionEntityCopyWith<$Res> {
  factory $SuggestionEntityCopyWith(
          SuggestionEntity value, $Res Function(SuggestionEntity) then) =
      _$SuggestionEntityCopyWithImpl<$Res, SuggestionEntity>;
  @useResult
  $Res call(
      {String locationId,
      String locationName,
      String street,
      String district,
      double latitude,
      double longitude,
      String city,
      String country,
      String? postalCode});
}

/// @nodoc
class _$SuggestionEntityCopyWithImpl<$Res, $Val extends SuggestionEntity>
    implements $SuggestionEntityCopyWith<$Res> {
  _$SuggestionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationId = null,
    Object? locationName = null,
    Object? street = null,
    Object? district = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? city = null,
    Object? country = null,
    Object? postalCode = freezed,
  }) {
    return _then(_value.copyWith(
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuggestionEntityImplCopyWith<$Res>
    implements $SuggestionEntityCopyWith<$Res> {
  factory _$$SuggestionEntityImplCopyWith(_$SuggestionEntityImpl value,
          $Res Function(_$SuggestionEntityImpl) then) =
      __$$SuggestionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String locationId,
      String locationName,
      String street,
      String district,
      double latitude,
      double longitude,
      String city,
      String country,
      String? postalCode});
}

/// @nodoc
class __$$SuggestionEntityImplCopyWithImpl<$Res>
    extends _$SuggestionEntityCopyWithImpl<$Res, _$SuggestionEntityImpl>
    implements _$$SuggestionEntityImplCopyWith<$Res> {
  __$$SuggestionEntityImplCopyWithImpl(_$SuggestionEntityImpl _value,
      $Res Function(_$SuggestionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationId = null,
    Object? locationName = null,
    Object? street = null,
    Object? district = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? city = null,
    Object? country = null,
    Object? postalCode = freezed,
  }) {
    return _then(_$SuggestionEntityImpl(
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuggestionEntityImpl implements _SuggestionEntity {
  const _$SuggestionEntityImpl(
      {required this.locationId,
      required this.locationName,
      required this.street,
      required this.district,
      required this.latitude,
      required this.longitude,
      required this.city,
      required this.country,
      this.postalCode});

  @override
  final String locationId;
  @override
  final String locationName;
  @override
  final String street;
  @override
  final String district;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String city;
  @override
  final String country;
  @override
  final String? postalCode;

  @override
  String toString() {
    return 'SuggestionEntity(locationId: $locationId, locationName: $locationName, street: $street, district: $district, latitude: $latitude, longitude: $longitude, city: $city, country: $country, postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestionEntityImpl &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationId, locationName, street,
      district, latitude, longitude, city, country, postalCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestionEntityImplCopyWith<_$SuggestionEntityImpl> get copyWith =>
      __$$SuggestionEntityImplCopyWithImpl<_$SuggestionEntityImpl>(
          this, _$identity);
}

abstract class _SuggestionEntity implements SuggestionEntity {
  const factory _SuggestionEntity(
      {required final String locationId,
      required final String locationName,
      required final String street,
      required final String district,
      required final double latitude,
      required final double longitude,
      required final String city,
      required final String country,
      final String? postalCode}) = _$SuggestionEntityImpl;

  @override
  String get locationId;
  @override
  String get locationName;
  @override
  String get street;
  @override
  String get district;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get city;
  @override
  String get country;
  @override
  String? get postalCode;
  @override
  @JsonKey(ignore: true)
  _$$SuggestionEntityImplCopyWith<_$SuggestionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
