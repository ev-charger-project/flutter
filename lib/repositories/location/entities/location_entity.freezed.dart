// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationEntity {
  String get name => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  WorkingDay get workingDay => throw _privateConstructorUsedError;
  String? get pricing => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get parkingLevel => throw _privateConstructorUsedError;
  ChargerDataModel get chargerDataModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationEntityCopyWith<LocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEntityCopyWith<$Res> {
  factory $LocationEntityCopyWith(
          LocationEntity value, $Res Function(LocationEntity) then) =
      _$LocationEntityCopyWithImpl<$Res, LocationEntity>;
  @useResult
  $Res call(
      {String name,
      String street,
      String? district,
      String city,
      String? postalCode,
      String country,
      String? description,
      WorkingDay workingDay,
      String? pricing,
      String? phoneNumber,
      String? parkingLevel,
      ChargerDataModel chargerDataModel});

  $WorkingDayCopyWith<$Res> get workingDay;
  $ChargerDataModelCopyWith<$Res> get chargerDataModel;
}

/// @nodoc
class _$LocationEntityCopyWithImpl<$Res, $Val extends LocationEntity>
    implements $LocationEntityCopyWith<$Res> {
  _$LocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? street = null,
    Object? district = freezed,
    Object? city = null,
    Object? postalCode = freezed,
    Object? country = null,
    Object? description = freezed,
    Object? workingDay = null,
    Object? pricing = freezed,
    Object? phoneNumber = freezed,
    Object? parkingLevel = freezed,
    Object? chargerDataModel = null,
  }) {
    return _then(_value.copyWith(
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
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
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
      chargerDataModel: null == chargerDataModel
          ? _value.chargerDataModel
          : chargerDataModel // ignore: cast_nullable_to_non_nullable
              as ChargerDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkingDayCopyWith<$Res> get workingDay {
    return $WorkingDayCopyWith<$Res>(_value.workingDay, (value) {
      return _then(_value.copyWith(workingDay: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChargerDataModelCopyWith<$Res> get chargerDataModel {
    return $ChargerDataModelCopyWith<$Res>(_value.chargerDataModel, (value) {
      return _then(_value.copyWith(chargerDataModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationEntityImplCopyWith<$Res>
    implements $LocationEntityCopyWith<$Res> {
  factory _$$LocationEntityImplCopyWith(_$LocationEntityImpl value,
          $Res Function(_$LocationEntityImpl) then) =
      __$$LocationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String street,
      String? district,
      String city,
      String? postalCode,
      String country,
      String? description,
      WorkingDay workingDay,
      String? pricing,
      String? phoneNumber,
      String? parkingLevel,
      ChargerDataModel chargerDataModel});

  @override
  $WorkingDayCopyWith<$Res> get workingDay;
  @override
  $ChargerDataModelCopyWith<$Res> get chargerDataModel;
}

/// @nodoc
class __$$LocationEntityImplCopyWithImpl<$Res>
    extends _$LocationEntityCopyWithImpl<$Res, _$LocationEntityImpl>
    implements _$$LocationEntityImplCopyWith<$Res> {
  __$$LocationEntityImplCopyWithImpl(
      _$LocationEntityImpl _value, $Res Function(_$LocationEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? street = null,
    Object? district = freezed,
    Object? city = null,
    Object? postalCode = freezed,
    Object? country = null,
    Object? description = freezed,
    Object? workingDay = null,
    Object? pricing = freezed,
    Object? phoneNumber = freezed,
    Object? parkingLevel = freezed,
    Object? chargerDataModel = null,
  }) {
    return _then(_$LocationEntityImpl(
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
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
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
      chargerDataModel: null == chargerDataModel
          ? _value.chargerDataModel
          : chargerDataModel // ignore: cast_nullable_to_non_nullable
              as ChargerDataModel,
    ));
  }
}

/// @nodoc

class _$LocationEntityImpl implements _LocationEntity {
  const _$LocationEntityImpl(
      {required this.name,
      required this.street,
      this.district,
      required this.city,
      this.postalCode,
      required this.country,
      this.description,
      required this.workingDay,
      this.pricing,
      this.phoneNumber,
      this.parkingLevel,
      required this.chargerDataModel});

  @override
  final String name;
  @override
  final String street;
  @override
  final String? district;
  @override
  final String city;
  @override
  final String? postalCode;
  @override
  final String country;
  @override
  final String? description;
  @override
  final WorkingDay workingDay;
  @override
  final String? pricing;
  @override
  final String? phoneNumber;
  @override
  final String? parkingLevel;
  @override
  final ChargerDataModel chargerDataModel;

  @override
  String toString() {
    return 'LocationEntity(name: $name, street: $street, district: $district, city: $city, postalCode: $postalCode, country: $country, description: $description, workingDay: $workingDay, pricing: $pricing, phoneNumber: $phoneNumber, parkingLevel: $parkingLevel, chargerDataModel: $chargerDataModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.workingDay, workingDay) ||
                other.workingDay == workingDay) &&
            (identical(other.pricing, pricing) || other.pricing == pricing) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.parkingLevel, parkingLevel) ||
                other.parkingLevel == parkingLevel) &&
            (identical(other.chargerDataModel, chargerDataModel) ||
                other.chargerDataModel == chargerDataModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      street,
      district,
      city,
      postalCode,
      country,
      description,
      workingDay,
      pricing,
      phoneNumber,
      parkingLevel,
      chargerDataModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationEntityImplCopyWith<_$LocationEntityImpl> get copyWith =>
      __$$LocationEntityImplCopyWithImpl<_$LocationEntityImpl>(
          this, _$identity);
}

abstract class _LocationEntity implements LocationEntity {
  const factory _LocationEntity(
      {required final String name,
      required final String street,
      final String? district,
      required final String city,
      final String? postalCode,
      required final String country,
      final String? description,
      required final WorkingDay workingDay,
      final String? pricing,
      final String? phoneNumber,
      final String? parkingLevel,
      required final ChargerDataModel chargerDataModel}) = _$LocationEntityImpl;

  @override
  String get name;
  @override
  String get street;
  @override
  String? get district;
  @override
  String get city;
  @override
  String? get postalCode;
  @override
  String get country;
  @override
  String? get description;
  @override
  WorkingDay get workingDay;
  @override
  String? get pricing;
  @override
  String? get phoneNumber;
  @override
  String? get parkingLevel;
  @override
  ChargerDataModel get chargerDataModel;
  @override
  @JsonKey(ignore: true)
  _$$LocationEntityImplCopyWith<_$LocationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
