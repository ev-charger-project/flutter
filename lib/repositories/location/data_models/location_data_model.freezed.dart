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
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'working_day')
  WorkingDay get workingDay => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'working_day') WorkingDay workingDay,
      @JsonKey(name: 'pricing') String? pricing,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'parking_level') String? parkingLevel});

  $WorkingDayCopyWith<$Res> get workingDay;
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
    Object? description = freezed,
    Object? workingDay = null,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      workingDay: null == workingDay
          ? _value.workingDay
          : workingDay // ignore: cast_nullable_to_non_nullable
              as WorkingDay,
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

  @override
  @pragma('vm:prefer-inline')
  $WorkingDayCopyWith<$Res> get workingDay {
    return $WorkingDayCopyWith<$Res>(_value.workingDay, (value) {
      return _then(_value.copyWith(workingDay: value) as $Val);
    });
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
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'working_day') WorkingDay workingDay,
      @JsonKey(name: 'pricing') String? pricing,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'parking_level') String? parkingLevel});

  @override
  $WorkingDayCopyWith<$Res> get workingDay;
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
    Object? description = freezed,
    Object? workingDay = null,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      workingDay: null == workingDay
          ? _value.workingDay
          : workingDay // ignore: cast_nullable_to_non_nullable
              as WorkingDay,
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
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'working_day') required this.workingDay,
      @JsonKey(name: 'pricing') this.pricing,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'parking_level') this.parkingLevel});

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
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'working_day')
  final WorkingDay workingDay;
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
    return 'LocationDataModel(id: $id, name: $name, streetAddress: $streetAddress, district: $district, cityProvince: $cityProvince, country: $country, postalCode: $postalCode, latitude: $latitude, longitude: $longitude, description: $description, workingDay: $workingDay, pricing: $pricing, phoneNumber: $phoneNumber, parkingLevel: $parkingLevel)';
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
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.workingDay, workingDay) ||
                other.workingDay == workingDay) &&
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
      description,
      workingDay,
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
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'working_day') required final WorkingDay workingDay,
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
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'working_day')
  WorkingDay get workingDay;
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

WorkingDay _$WorkingDayFromJson(Map<String, dynamic> json) {
  return _WorkingDay.fromJson(json);
}

/// @nodoc
mixin _$WorkingDay {
  @JsonKey(name: 'mon')
  String get mon => throw _privateConstructorUsedError;
  @JsonKey(name: 'tue')
  String get tue => throw _privateConstructorUsedError;
  @JsonKey(name: 'wed')
  String get wed => throw _privateConstructorUsedError;
  @JsonKey(name: 'thu')
  String get thu => throw _privateConstructorUsedError;
  @JsonKey(name: 'fri')
  String get fri => throw _privateConstructorUsedError;
  @JsonKey(name: 'sat')
  String get sat => throw _privateConstructorUsedError;
  @JsonKey(name: 'sun')
  String get sun => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkingDayCopyWith<WorkingDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingDayCopyWith<$Res> {
  factory $WorkingDayCopyWith(
          WorkingDay value, $Res Function(WorkingDay) then) =
      _$WorkingDayCopyWithImpl<$Res, WorkingDay>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mon') String mon,
      @JsonKey(name: 'tue') String tue,
      @JsonKey(name: 'wed') String wed,
      @JsonKey(name: 'thu') String thu,
      @JsonKey(name: 'fri') String fri,
      @JsonKey(name: 'sat') String sat,
      @JsonKey(name: 'sun') String sun});
}

/// @nodoc
class _$WorkingDayCopyWithImpl<$Res, $Val extends WorkingDay>
    implements $WorkingDayCopyWith<$Res> {
  _$WorkingDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mon = null,
    Object? tue = null,
    Object? wed = null,
    Object? thu = null,
    Object? fri = null,
    Object? sat = null,
    Object? sun = null,
  }) {
    return _then(_value.copyWith(
      mon: null == mon
          ? _value.mon
          : mon // ignore: cast_nullable_to_non_nullable
              as String,
      tue: null == tue
          ? _value.tue
          : tue // ignore: cast_nullable_to_non_nullable
              as String,
      wed: null == wed
          ? _value.wed
          : wed // ignore: cast_nullable_to_non_nullable
              as String,
      thu: null == thu
          ? _value.thu
          : thu // ignore: cast_nullable_to_non_nullable
              as String,
      fri: null == fri
          ? _value.fri
          : fri // ignore: cast_nullable_to_non_nullable
              as String,
      sat: null == sat
          ? _value.sat
          : sat // ignore: cast_nullable_to_non_nullable
              as String,
      sun: null == sun
          ? _value.sun
          : sun // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkingDayImplCopyWith<$Res>
    implements $WorkingDayCopyWith<$Res> {
  factory _$$WorkingDayImplCopyWith(
          _$WorkingDayImpl value, $Res Function(_$WorkingDayImpl) then) =
      __$$WorkingDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mon') String mon,
      @JsonKey(name: 'tue') String tue,
      @JsonKey(name: 'wed') String wed,
      @JsonKey(name: 'thu') String thu,
      @JsonKey(name: 'fri') String fri,
      @JsonKey(name: 'sat') String sat,
      @JsonKey(name: 'sun') String sun});
}

/// @nodoc
class __$$WorkingDayImplCopyWithImpl<$Res>
    extends _$WorkingDayCopyWithImpl<$Res, _$WorkingDayImpl>
    implements _$$WorkingDayImplCopyWith<$Res> {
  __$$WorkingDayImplCopyWithImpl(
      _$WorkingDayImpl _value, $Res Function(_$WorkingDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mon = null,
    Object? tue = null,
    Object? wed = null,
    Object? thu = null,
    Object? fri = null,
    Object? sat = null,
    Object? sun = null,
  }) {
    return _then(_$WorkingDayImpl(
      mon: null == mon
          ? _value.mon
          : mon // ignore: cast_nullable_to_non_nullable
              as String,
      tue: null == tue
          ? _value.tue
          : tue // ignore: cast_nullable_to_non_nullable
              as String,
      wed: null == wed
          ? _value.wed
          : wed // ignore: cast_nullable_to_non_nullable
              as String,
      thu: null == thu
          ? _value.thu
          : thu // ignore: cast_nullable_to_non_nullable
              as String,
      fri: null == fri
          ? _value.fri
          : fri // ignore: cast_nullable_to_non_nullable
              as String,
      sat: null == sat
          ? _value.sat
          : sat // ignore: cast_nullable_to_non_nullable
              as String,
      sun: null == sun
          ? _value.sun
          : sun // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkingDayImpl implements _WorkingDay {
  const _$WorkingDayImpl(
      {@JsonKey(name: 'mon') required this.mon,
      @JsonKey(name: 'tue') required this.tue,
      @JsonKey(name: 'wed') required this.wed,
      @JsonKey(name: 'thu') required this.thu,
      @JsonKey(name: 'fri') required this.fri,
      @JsonKey(name: 'sat') required this.sat,
      @JsonKey(name: 'sun') required this.sun});

  factory _$WorkingDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkingDayImplFromJson(json);

  @override
  @JsonKey(name: 'mon')
  final String mon;
  @override
  @JsonKey(name: 'tue')
  final String tue;
  @override
  @JsonKey(name: 'wed')
  final String wed;
  @override
  @JsonKey(name: 'thu')
  final String thu;
  @override
  @JsonKey(name: 'fri')
  final String fri;
  @override
  @JsonKey(name: 'sat')
  final String sat;
  @override
  @JsonKey(name: 'sun')
  final String sun;

  @override
  String toString() {
    return 'WorkingDay(mon: $mon, tue: $tue, wed: $wed, thu: $thu, fri: $fri, sat: $sat, sun: $sun)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingDayImpl &&
            (identical(other.mon, mon) || other.mon == mon) &&
            (identical(other.tue, tue) || other.tue == tue) &&
            (identical(other.wed, wed) || other.wed == wed) &&
            (identical(other.thu, thu) || other.thu == thu) &&
            (identical(other.fri, fri) || other.fri == fri) &&
            (identical(other.sat, sat) || other.sat == sat) &&
            (identical(other.sun, sun) || other.sun == sun));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mon, tue, wed, thu, fri, sat, sun);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingDayImplCopyWith<_$WorkingDayImpl> get copyWith =>
      __$$WorkingDayImplCopyWithImpl<_$WorkingDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkingDayImplToJson(
      this,
    );
  }
}

abstract class _WorkingDay implements WorkingDay {
  const factory _WorkingDay(
      {@JsonKey(name: 'mon') required final String mon,
      @JsonKey(name: 'tue') required final String tue,
      @JsonKey(name: 'wed') required final String wed,
      @JsonKey(name: 'thu') required final String thu,
      @JsonKey(name: 'fri') required final String fri,
      @JsonKey(name: 'sat') required final String sat,
      @JsonKey(name: 'sun') required final String sun}) = _$WorkingDayImpl;

  factory _WorkingDay.fromJson(Map<String, dynamic> json) =
      _$WorkingDayImpl.fromJson;

  @override
  @JsonKey(name: 'mon')
  String get mon;
  @override
  @JsonKey(name: 'tue')
  String get tue;
  @override
  @JsonKey(name: 'wed')
  String get wed;
  @override
  @JsonKey(name: 'thu')
  String get thu;
  @override
  @JsonKey(name: 'fri')
  String get fri;
  @override
  @JsonKey(name: 'sat')
  String get sat;
  @override
  @JsonKey(name: 'sun')
  String get sun;
  @override
  @JsonKey(ignore: true)
  _$$WorkingDayImplCopyWith<_$WorkingDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
