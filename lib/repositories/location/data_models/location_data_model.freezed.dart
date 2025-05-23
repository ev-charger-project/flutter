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
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'working_days')
  List<WorkingDay>? get workingDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'pricing')
  String? get pricing => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'parking_level')
  String? get parkingLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'ev_chargers')
  List<ChargerDataModel>? get ev_chargers => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_amenities')
  List<LocationAmenityDataModel>? get locationAmenities =>
      throw _privateConstructorUsedError;

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
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'postal_code') String? postal,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'working_days') List<WorkingDay>? workingDays,
      @JsonKey(name: 'pricing') String? pricing,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'parking_level') String? parkingLevel,
      @JsonKey(name: 'ev_chargers') List<ChargerDataModel>? ev_chargers,
      @JsonKey(name: 'location_amenities')
      List<LocationAmenityDataModel>? locationAmenities});
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
    Object? street = null,
    Object? district = freezed,
    Object? city = null,
    Object? postal = freezed,
    Object? country = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? description = freezed,
    Object? workingDays = freezed,
    Object? pricing = freezed,
    Object? phoneNumber = freezed,
    Object? parkingLevel = freezed,
    Object? ev_chargers = freezed,
    Object? locationAmenities = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      workingDays: freezed == workingDays
          ? _value.workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as List<WorkingDay>?,
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
      ev_chargers: freezed == ev_chargers
          ? _value.ev_chargers
          : ev_chargers // ignore: cast_nullable_to_non_nullable
              as List<ChargerDataModel>?,
      locationAmenities: freezed == locationAmenities
          ? _value.locationAmenities
          : locationAmenities // ignore: cast_nullable_to_non_nullable
              as List<LocationAmenityDataModel>?,
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
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'postal_code') String? postal,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'working_days') List<WorkingDay>? workingDays,
      @JsonKey(name: 'pricing') String? pricing,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'parking_level') String? parkingLevel,
      @JsonKey(name: 'ev_chargers') List<ChargerDataModel>? ev_chargers,
      @JsonKey(name: 'location_amenities')
      List<LocationAmenityDataModel>? locationAmenities});
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
    Object? street = null,
    Object? district = freezed,
    Object? city = null,
    Object? postal = freezed,
    Object? country = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? description = freezed,
    Object? workingDays = freezed,
    Object? pricing = freezed,
    Object? phoneNumber = freezed,
    Object? parkingLevel = freezed,
    Object? ev_chargers = freezed,
    Object? locationAmenities = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      workingDays: freezed == workingDays
          ? _value._workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as List<WorkingDay>?,
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
      ev_chargers: freezed == ev_chargers
          ? _value._ev_chargers
          : ev_chargers // ignore: cast_nullable_to_non_nullable
              as List<ChargerDataModel>?,
      locationAmenities: freezed == locationAmenities
          ? _value._locationAmenities
          : locationAmenities // ignore: cast_nullable_to_non_nullable
              as List<LocationAmenityDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDataModelImpl implements _LocationDataModel {
  const _$LocationDataModelImpl(
      {@JsonKey(name: 'id') this.id = 'blank',
      @JsonKey(name: 'location_name') required this.name,
      @JsonKey(name: 'street') required this.street,
      @JsonKey(name: 'district') this.district,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'postal_code') this.postal,
      @JsonKey(name: 'country') required this.country,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'working_days')
      final List<WorkingDay>? workingDays = const [],
      @JsonKey(name: 'pricing') this.pricing,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'parking_level') this.parkingLevel,
      @JsonKey(name: 'ev_chargers')
      final List<ChargerDataModel>? ev_chargers = const [],
      @JsonKey(name: 'location_amenities')
      final List<LocationAmenityDataModel>? locationAmenities = const []})
      : _workingDays = workingDays,
        _ev_chargers = ev_chargers,
        _locationAmenities = locationAmenities;

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
  @JsonKey(name: 'description')
  final String? description;
  final List<WorkingDay>? _workingDays;
  @override
  @JsonKey(name: 'working_days')
  List<WorkingDay>? get workingDays {
    final value = _workingDays;
    if (value == null) return null;
    if (_workingDays is EqualUnmodifiableListView) return _workingDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
  final List<ChargerDataModel>? _ev_chargers;
  @override
  @JsonKey(name: 'ev_chargers')
  List<ChargerDataModel>? get ev_chargers {
    final value = _ev_chargers;
    if (value == null) return null;
    if (_ev_chargers is EqualUnmodifiableListView) return _ev_chargers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LocationAmenityDataModel>? _locationAmenities;
  @override
  @JsonKey(name: 'location_amenities')
  List<LocationAmenityDataModel>? get locationAmenities {
    final value = _locationAmenities;
    if (value == null) return null;
    if (_locationAmenities is EqualUnmodifiableListView)
      return _locationAmenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationDataModel(id: $id, name: $name, street: $street, district: $district, city: $city, postal: $postal, country: $country, latitude: $latitude, longitude: $longitude, description: $description, workingDays: $workingDays, pricing: $pricing, phoneNumber: $phoneNumber, parkingLevel: $parkingLevel, ev_chargers: $ev_chargers, locationAmenities: $locationAmenities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postal, postal) || other.postal == postal) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._workingDays, _workingDays) &&
            (identical(other.pricing, pricing) || other.pricing == pricing) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.parkingLevel, parkingLevel) ||
                other.parkingLevel == parkingLevel) &&
            const DeepCollectionEquality()
                .equals(other._ev_chargers, _ev_chargers) &&
            const DeepCollectionEquality()
                .equals(other._locationAmenities, _locationAmenities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      street,
      district,
      city,
      postal,
      country,
      latitude,
      longitude,
      description,
      const DeepCollectionEquality().hash(_workingDays),
      pricing,
      phoneNumber,
      parkingLevel,
      const DeepCollectionEquality().hash(_ev_chargers),
      const DeepCollectionEquality().hash(_locationAmenities));

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
      {@JsonKey(name: 'id') final String id,
      @JsonKey(name: 'location_name') required final String name,
      @JsonKey(name: 'street') required final String street,
      @JsonKey(name: 'district') final String? district,
      @JsonKey(name: 'city') required final String city,
      @JsonKey(name: 'postal_code') final String? postal,
      @JsonKey(name: 'country') required final String country,
      @JsonKey(name: 'latitude') required final double latitude,
      @JsonKey(name: 'longitude') required final double longitude,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'working_days') final List<WorkingDay>? workingDays,
      @JsonKey(name: 'pricing') final String? pricing,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'parking_level') final String? parkingLevel,
      @JsonKey(name: 'ev_chargers') final List<ChargerDataModel>? ev_chargers,
      @JsonKey(name: 'location_amenities')
      final List<LocationAmenityDataModel>?
          locationAmenities}) = _$LocationDataModelImpl;

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
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'working_days')
  List<WorkingDay>? get workingDays;
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
  @JsonKey(name: 'ev_chargers')
  List<ChargerDataModel>? get ev_chargers;
  @override
  @JsonKey(name: 'location_amenities')
  List<LocationAmenityDataModel>? get locationAmenities;
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
  @JsonKey(name: 'day')
  int get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_time')
  String get openTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'close_time')
  String get closeTime => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'day') int day,
      @JsonKey(name: 'open_time') String openTime,
      @JsonKey(name: 'close_time') String closeTime});
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
    Object? day = null,
    Object? openTime = null,
    Object? closeTime = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'day') int day,
      @JsonKey(name: 'open_time') String openTime,
      @JsonKey(name: 'close_time') String closeTime});
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
    Object? day = null,
    Object? openTime = null,
    Object? closeTime = null,
  }) {
    return _then(_$WorkingDayImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkingDayImpl implements _WorkingDay {
  const _$WorkingDayImpl(
      {@JsonKey(name: 'day') required this.day,
      @JsonKey(name: 'open_time') required this.openTime,
      @JsonKey(name: 'close_time') required this.closeTime});

  factory _$WorkingDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkingDayImplFromJson(json);

  @override
  @JsonKey(name: 'day')
  final int day;
  @override
  @JsonKey(name: 'open_time')
  final String openTime;
  @override
  @JsonKey(name: 'close_time')
  final String closeTime;

  @override
  String toString() {
    return 'WorkingDay(day: $day, openTime: $openTime, closeTime: $closeTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingDayImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.openTime, openTime) ||
                other.openTime == openTime) &&
            (identical(other.closeTime, closeTime) ||
                other.closeTime == closeTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, openTime, closeTime);

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
          {@JsonKey(name: 'day') required final int day,
          @JsonKey(name: 'open_time') required final String openTime,
          @JsonKey(name: 'close_time') required final String closeTime}) =
      _$WorkingDayImpl;

  factory _WorkingDay.fromJson(Map<String, dynamic> json) =
      _$WorkingDayImpl.fromJson;

  @override
  @JsonKey(name: 'day')
  int get day;
  @override
  @JsonKey(name: 'open_time')
  String get openTime;
  @override
  @JsonKey(name: 'close_time')
  String get closeTime;
  @override
  @JsonKey(ignore: true)
  _$$WorkingDayImplCopyWith<_$WorkingDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
