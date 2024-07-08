// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationDataModel _$LocationDataModelFromJson(Map<String, dynamic> json) {
  return _LocationDataModel.fromJson(json);
}

/// @nodoc
mixin _$LocationDataModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'street')
  String get streetAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'district')
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get cityProvince => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code')
  String? get postalCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'operating_hours')
  List<OperatingHour> get operatingHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'pricing')
  String? get pricing => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'parking_level')
  String? get parkingLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDataModelCopyWith<LocationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDataModelCopyWith<$Res> {
  factory $LocationDataModelCopyWith(
          LocationDataModel value, $Res Function(LocationDataModel) then) =
      _$LocationDataModelCopyWithImpl<$Res, LocationDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'location_name') String name,
      @JsonKey(name: 'street') String streetAddress,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'city') String cityProvince,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'postal_code') String? postalCode,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'operating_hours') List<OperatingHour> operatingHours,
      @JsonKey(name: 'pricing') String? pricing,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'parking_level') String? parkingLevel});
}

/// @nodoc
class _$LocationDataModelCopyWithImpl<$Res, $Val extends LocationDataModel>
    implements $LocationDataModelCopyWith<$Res> {
  _$LocationDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? streetAddress = null,
    Object? district = freezed,
    Object? cityProvince = null,
    Object? country = null,
    Object? postalCode = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? operatingHours = null,
    Object? pricing = freezed,
    Object? phoneNumber = freezed,
    Object? parkingLevel = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      streetAddress: null == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      cityProvince: null == cityProvince
          ? _value.cityProvince
          : cityProvince // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      operatingHours: null == operatingHours
          ? _value.operatingHours
          : operatingHours // ignore: cast_nullable_to_non_nullable
              as List<OperatingHour>,
      pricing: freezed == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      parkingLevel: freezed == parkingLevel
          ? _value.parkingLevel
          : parkingLevel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationDataModelImplCopyWith<$Res>
    implements $LocationDataModelCopyWith<$Res> {
  factory _$$LocationDataModelImplCopyWith(_$LocationDataModelImpl value,
          $Res Function(_$LocationDataModelImpl) then) =
      __$$LocationDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'location_name') String name,
      @JsonKey(name: 'street') String streetAddress,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'city') String cityProvince,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'postal_code') String? postalCode,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'operating_hours') List<OperatingHour> operatingHours,
      @JsonKey(name: 'pricing') String? pricing,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'parking_level') String? parkingLevel});
}

/// @nodoc
class __$$LocationDataModelImplCopyWithImpl<$Res>
    extends _$LocationDataModelCopyWithImpl<$Res, _$LocationDataModelImpl>
    implements _$$LocationDataModelImplCopyWith<$Res> {
  __$$LocationDataModelImplCopyWithImpl(_$LocationDataModelImpl _value,
      $Res Function(_$LocationDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? streetAddress = null,
    Object? district = freezed,
    Object? cityProvince = null,
    Object? country = null,
    Object? postalCode = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? operatingHours = null,
    Object? pricing = freezed,
    Object? phoneNumber = freezed,
    Object? parkingLevel = freezed,
  }) {
    return _then(_$LocationDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      streetAddress: null == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      cityProvince: null == cityProvince
          ? _value.cityProvince
          : cityProvince // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      operatingHours: null == operatingHours
          ? _value._operatingHours
          : operatingHours // ignore: cast_nullable_to_non_nullable
              as List<OperatingHour>,
      pricing: freezed == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      parkingLevel: freezed == parkingLevel
          ? _value.parkingLevel
          : parkingLevel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDataModelImpl implements _LocationDataModel {
  const _$LocationDataModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'location_name') required this.name,
      @JsonKey(name: 'street') required this.streetAddress,
      @JsonKey(name: 'district') this.district,
      @JsonKey(name: 'city') required this.cityProvince,
      @JsonKey(name: 'country') required this.country,
      @JsonKey(name: 'postal_code') this.postalCode,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'operating_hours')
      required final List<OperatingHour> operatingHours,
      @JsonKey(name: 'pricing') this.pricing,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'parking_level') this.parkingLevel})
      : _operatingHours = operatingHours;

  factory _$LocationDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'location_name')
  final String name;
  @override
  @JsonKey(name: 'street')
  final String streetAddress;
  @override
  @JsonKey(name: 'district')
  final String? district;
  @override
  @JsonKey(name: 'city')
  final String cityProvince;
  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  @override
  @JsonKey(name: 'latitude')
  final double latitude;
  @override
  @JsonKey(name: 'longitude')
  final double longitude;
  final List<OperatingHour> _operatingHours;
  @override
  @JsonKey(name: 'operating_hours')
  List<OperatingHour> get operatingHours {
    if (_operatingHours is EqualUnmodifiableListView) return _operatingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_operatingHours);
  }

  @override
  @JsonKey(name: 'pricing')
  final String? pricing;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'parking_level')
  final String? parkingLevel;

  @override
  String toString() {
    return 'LocationDataModel(id: $id, name: $name, streetAddress: $streetAddress, district: $district, cityProvince: $cityProvince, country: $country, postalCode: $postalCode, latitude: $latitude, longitude: $longitude, operatingHours: $operatingHours, pricing: $pricing, phoneNumber: $phoneNumber, parkingLevel: $parkingLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.streetAddress, streetAddress) ||
                other.streetAddress == streetAddress) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.cityProvince, cityProvince) ||
                other.cityProvince == cityProvince) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality()
                .equals(other._operatingHours, _operatingHours) &&
            (identical(other.pricing, pricing) || other.pricing == pricing) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.parkingLevel, parkingLevel) ||
                other.parkingLevel == parkingLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      streetAddress,
      district,
      cityProvince,
      country,
      postalCode,
      latitude,
      longitude,
      const DeepCollectionEquality().hash(_operatingHours),
      pricing,
      phoneNumber,
      parkingLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDataModelImplCopyWith<_$LocationDataModelImpl> get copyWith =>
      __$$LocationDataModelImplCopyWithImpl<_$LocationDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDataModelImplToJson(
      this,
    );
  }
}

abstract class _LocationDataModel implements LocationDataModel {
  const factory _LocationDataModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'location_name') required final String name,
          @JsonKey(name: 'street') required final String streetAddress,
          @JsonKey(name: 'district') final String? district,
          @JsonKey(name: 'city') required final String cityProvince,
          @JsonKey(name: 'country') required final String country,
          @JsonKey(name: 'postal_code') final String? postalCode,
          @JsonKey(name: 'latitude') required final double latitude,
          @JsonKey(name: 'longitude') required final double longitude,
          @JsonKey(name: 'operating_hours')
          required final List<OperatingHour> operatingHours,
          @JsonKey(name: 'pricing') final String? pricing,
          @JsonKey(name: 'phone_number') final String? phoneNumber,
          @JsonKey(name: 'parking_level') final String? parkingLevel}) =
      _$LocationDataModelImpl;

  factory _LocationDataModel.fromJson(Map<String, dynamic> json) =
      _$LocationDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'location_name')
  String get name;
  @override
  @JsonKey(name: 'street')
  String get streetAddress;
  @override
  @JsonKey(name: 'district')
  String? get district;
  @override
  @JsonKey(name: 'city')
  String get cityProvince;
  @override
  @JsonKey(name: 'country')
  String get country;
  @override
  @JsonKey(name: 'postal_code')
  String? get postalCode;
  @override
  @JsonKey(name: 'latitude')
  double get latitude;
  @override
  @JsonKey(name: 'longitude')
  double get longitude;
  @override
  @JsonKey(name: 'operating_hours')
  List<OperatingHour> get operatingHours;
  @override
  @JsonKey(name: 'pricing')
  String? get pricing;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'parking_level')
  String? get parkingLevel;
  @override
  @JsonKey(ignore: true)
  _$$LocationDataModelImplCopyWith<_$LocationDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OperatingHour _$OperatingHourFromJson(Map<String, dynamic> json) {
  return _OperatingHour.fromJson(json);
}

/// @nodoc
mixin _$OperatingHour {
  String get day => throw _privateConstructorUsedError;
  String get open => throw _privateConstructorUsedError;
  String get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperatingHourCopyWith<OperatingHour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperatingHourCopyWith<$Res> {
  factory $OperatingHourCopyWith(
          OperatingHour value, $Res Function(OperatingHour) then) =
      _$OperatingHourCopyWithImpl<$Res, OperatingHour>;
  @useResult
  $Res call({String day, String open, String close});
}

/// @nodoc
class _$OperatingHourCopyWithImpl<$Res, $Val extends OperatingHour>
    implements $OperatingHourCopyWith<$Res> {
  _$OperatingHourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? open = null,
    Object? close = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OperatingHourImplCopyWith<$Res>
    implements $OperatingHourCopyWith<$Res> {
  factory _$$OperatingHourImplCopyWith(
          _$OperatingHourImpl value, $Res Function(_$OperatingHourImpl) then) =
      __$$OperatingHourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String day, String open, String close});
}

/// @nodoc
class __$$OperatingHourImplCopyWithImpl<$Res>
    extends _$OperatingHourCopyWithImpl<$Res, _$OperatingHourImpl>
    implements _$$OperatingHourImplCopyWith<$Res> {
  __$$OperatingHourImplCopyWithImpl(
      _$OperatingHourImpl _value, $Res Function(_$OperatingHourImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? open = null,
    Object? close = null,
  }) {
    return _then(_$OperatingHourImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperatingHourImpl implements _OperatingHour {
  const _$OperatingHourImpl(
      {required this.day, required this.open, required this.close});

  factory _$OperatingHourImpl.fromJson(Map<String, dynamic> json) =>
      _$$OperatingHourImplFromJson(json);

  @override
  final String day;
  @override
  final String open;
  @override
  final String close;

  @override
  String toString() {
    return 'OperatingHour(day: $day, open: $open, close: $close)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperatingHourImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, open, close);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperatingHourImplCopyWith<_$OperatingHourImpl> get copyWith =>
      __$$OperatingHourImplCopyWithImpl<_$OperatingHourImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperatingHourImplToJson(
      this,
    );
  }
}

abstract class _OperatingHour implements OperatingHour {
  const factory _OperatingHour(
      {required final String day,
      required final String open,
      required final String close}) = _$OperatingHourImpl;

  factory _OperatingHour.fromJson(Map<String, dynamic> json) =
      _$OperatingHourImpl.fromJson;

  @override
  String get day;
  @override
  String get open;
  @override
  String get close;
  @override
  @JsonKey(ignore: true)
  _$$OperatingHourImplCopyWith<_$OperatingHourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
