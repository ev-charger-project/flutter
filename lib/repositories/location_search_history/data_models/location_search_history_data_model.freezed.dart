// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_search_history_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationSearchHistoryDataModel _$LocationSearchHistoryDataModelFromJson(
    Map<String, dynamic> json) {
  return _LocationSearchHistoryDataModel.fromJson(json);
}

/// @nodoc
mixin _$LocationSearchHistoryDataModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  LocationDataModel get location => throw _privateConstructorUsedError;

  /// Serializes this LocationSearchHistoryDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationSearchHistoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationSearchHistoryDataModelCopyWith<LocationSearchHistoryDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSearchHistoryDataModelCopyWith<$Res> {
  factory $LocationSearchHistoryDataModelCopyWith(
          LocationSearchHistoryDataModel value,
          $Res Function(LocationSearchHistoryDataModel) then) =
      _$LocationSearchHistoryDataModelCopyWithImpl<$Res,
          LocationSearchHistoryDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'location') LocationDataModel location});

  $LocationDataModelCopyWith<$Res> get location;
}

/// @nodoc
class _$LocationSearchHistoryDataModelCopyWithImpl<$Res,
        $Val extends LocationSearchHistoryDataModel>
    implements $LocationSearchHistoryDataModelCopyWith<$Res> {
  _$LocationSearchHistoryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationSearchHistoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updatedAt = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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

  /// Create a copy of LocationSearchHistoryDataModel
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
abstract class _$$LocationSearchHistoryDataModelImplCopyWith<$Res>
    implements $LocationSearchHistoryDataModelCopyWith<$Res> {
  factory _$$LocationSearchHistoryDataModelImplCopyWith(
          _$LocationSearchHistoryDataModelImpl value,
          $Res Function(_$LocationSearchHistoryDataModelImpl) then) =
      __$$LocationSearchHistoryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'location') LocationDataModel location});

  @override
  $LocationDataModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$LocationSearchHistoryDataModelImplCopyWithImpl<$Res>
    extends _$LocationSearchHistoryDataModelCopyWithImpl<$Res,
        _$LocationSearchHistoryDataModelImpl>
    implements _$$LocationSearchHistoryDataModelImplCopyWith<$Res> {
  __$$LocationSearchHistoryDataModelImplCopyWithImpl(
      _$LocationSearchHistoryDataModelImpl _value,
      $Res Function(_$LocationSearchHistoryDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationSearchHistoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updatedAt = null,
    Object? location = null,
  }) {
    return _then(_$LocationSearchHistoryDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$LocationSearchHistoryDataModelImpl
    implements _LocationSearchHistoryDataModel {
  const _$LocationSearchHistoryDataModelImpl(
      {@JsonKey(name: 'id') this.id = 'blank',
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'location') required this.location});

  factory _$LocationSearchHistoryDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LocationSearchHistoryDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'location')
  final LocationDataModel location;

  @override
  String toString() {
    return 'LocationSearchHistoryDataModel(id: $id, updatedAt: $updatedAt, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationSearchHistoryDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, updatedAt, location);

  /// Create a copy of LocationSearchHistoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationSearchHistoryDataModelImplCopyWith<
          _$LocationSearchHistoryDataModelImpl>
      get copyWith => __$$LocationSearchHistoryDataModelImplCopyWithImpl<
          _$LocationSearchHistoryDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationSearchHistoryDataModelImplToJson(
      this,
    );
  }
}

abstract class _LocationSearchHistoryDataModel
    implements LocationSearchHistoryDataModel {
  const factory _LocationSearchHistoryDataModel(
          {@JsonKey(name: 'id') final String id,
          @JsonKey(name: 'updated_at') required final String updatedAt,
          @JsonKey(name: 'location')
          required final LocationDataModel location}) =
      _$LocationSearchHistoryDataModelImpl;

  factory _LocationSearchHistoryDataModel.fromJson(Map<String, dynamic> json) =
      _$LocationSearchHistoryDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'location')
  LocationDataModel get location;

  /// Create a copy of LocationSearchHistoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationSearchHistoryDataModelImplCopyWith<
          _$LocationSearchHistoryDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LocationSummaryDataModel _$LocationSummaryDataModelFromJson(
    Map<String, dynamic> json) {
  return _LocationSummaryDataModel.fromJson(json);
}

/// @nodoc
mixin _$LocationSummaryDataModel {
  @JsonKey(name: 'location_name')
  String get locationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'street')
  String get street => throw _privateConstructorUsedError;
  @JsonKey(name: 'district')
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code')
  String? get postal => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;

  /// Serializes this LocationSummaryDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationSummaryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationSummaryDataModelCopyWith<LocationSummaryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSummaryDataModelCopyWith<$Res> {
  factory $LocationSummaryDataModelCopyWith(LocationSummaryDataModel value,
          $Res Function(LocationSummaryDataModel) then) =
      _$LocationSummaryDataModelCopyWithImpl<$Res, LocationSummaryDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'location_name') String locationName,
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'postal_code') String? postal,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude});
}

/// @nodoc
class _$LocationSummaryDataModelCopyWithImpl<$Res,
        $Val extends LocationSummaryDataModel>
    implements $LocationSummaryDataModelCopyWith<$Res> {
  _$LocationSummaryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationSummaryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationName = null,
    Object? street = null,
    Object? district = freezed,
    Object? city = null,
    Object? postal = freezed,
    Object? country = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postal: freezed == postal
          ? _value.postal
          : postal // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
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
abstract class _$$LocationSummaryDataModelImplCopyWith<$Res>
    implements $LocationSummaryDataModelCopyWith<$Res> {
  factory _$$LocationSummaryDataModelImplCopyWith(
          _$LocationSummaryDataModelImpl value,
          $Res Function(_$LocationSummaryDataModelImpl) then) =
      __$$LocationSummaryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'location_name') String locationName,
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'postal_code') String? postal,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude});
}

/// @nodoc
class __$$LocationSummaryDataModelImplCopyWithImpl<$Res>
    extends _$LocationSummaryDataModelCopyWithImpl<$Res,
        _$LocationSummaryDataModelImpl>
    implements _$$LocationSummaryDataModelImplCopyWith<$Res> {
  __$$LocationSummaryDataModelImplCopyWithImpl(
      _$LocationSummaryDataModelImpl _value,
      $Res Function(_$LocationSummaryDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationSummaryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationName = null,
    Object? street = null,
    Object? district = freezed,
    Object? city = null,
    Object? postal = freezed,
    Object? country = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$LocationSummaryDataModelImpl(
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postal: freezed == postal
          ? _value.postal
          : postal // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$LocationSummaryDataModelImpl implements _LocationSummaryDataModel {
  const _$LocationSummaryDataModelImpl(
      {@JsonKey(name: 'location_name') required this.locationName,
      @JsonKey(name: 'street') required this.street,
      @JsonKey(name: 'district') this.district,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'postal_code') this.postal,
      @JsonKey(name: 'country') required this.country,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude});

  factory _$LocationSummaryDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationSummaryDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'location_name')
  final String locationName;
  @override
  @JsonKey(name: 'street')
  final String street;
  @override
  @JsonKey(name: 'district')
  final String? district;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'postal_code')
  final String? postal;
  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'latitude')
  final double latitude;
  @override
  @JsonKey(name: 'longitude')
  final double longitude;

  @override
  String toString() {
    return 'LocationSummaryDataModel(locationName: $locationName, street: $street, district: $district, city: $city, postal: $postal, country: $country, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationSummaryDataModelImpl &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postal, postal) || other.postal == postal) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, locationName, street, district,
      city, postal, country, latitude, longitude);

  /// Create a copy of LocationSummaryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationSummaryDataModelImplCopyWith<_$LocationSummaryDataModelImpl>
      get copyWith => __$$LocationSummaryDataModelImplCopyWithImpl<
          _$LocationSummaryDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationSummaryDataModelImplToJson(
      this,
    );
  }
}

abstract class _LocationSummaryDataModel implements LocationSummaryDataModel {
  const factory _LocationSummaryDataModel(
          {@JsonKey(name: 'location_name') required final String locationName,
          @JsonKey(name: 'street') required final String street,
          @JsonKey(name: 'district') final String? district,
          @JsonKey(name: 'city') required final String city,
          @JsonKey(name: 'postal_code') final String? postal,
          @JsonKey(name: 'country') required final String country,
          @JsonKey(name: 'latitude') required final double latitude,
          @JsonKey(name: 'longitude') required final double longitude}) =
      _$LocationSummaryDataModelImpl;

  factory _LocationSummaryDataModel.fromJson(Map<String, dynamic> json) =
      _$LocationSummaryDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'location_name')
  String get locationName;
  @override
  @JsonKey(name: 'street')
  String get street;
  @override
  @JsonKey(name: 'district')
  String? get district;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(name: 'postal_code')
  String? get postal;
  @override
  @JsonKey(name: 'country')
  String get country;
  @override
  @JsonKey(name: 'latitude')
  double get latitude;
  @override
  @JsonKey(name: 'longitude')
  double get longitude;

  /// Create a copy of LocationSummaryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationSummaryDataModelImplCopyWith<_$LocationSummaryDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
