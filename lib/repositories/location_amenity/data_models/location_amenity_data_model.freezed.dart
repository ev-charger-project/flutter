// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_amenity_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationAmenityDataModel _$LocationAmenityDataModelFromJson(
    Map<String, dynamic> json) {
  return _LocationAmenityDataModel.fromJson(json);
}

/// @nodoc
mixin _$LocationAmenityDataModel {
  @JsonKey(name: 'amenities')
  AmenityDataModel get amenities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationAmenityDataModelCopyWith<LocationAmenityDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationAmenityDataModelCopyWith<$Res> {
  factory $LocationAmenityDataModelCopyWith(LocationAmenityDataModel value,
          $Res Function(LocationAmenityDataModel) then) =
      _$LocationAmenityDataModelCopyWithImpl<$Res, LocationAmenityDataModel>;
  @useResult
  $Res call({@JsonKey(name: 'amenities') AmenityDataModel amenities});

  $AmenityDataModelCopyWith<$Res> get amenities;
}

/// @nodoc
class _$LocationAmenityDataModelCopyWithImpl<$Res,
        $Val extends LocationAmenityDataModel>
    implements $LocationAmenityDataModelCopyWith<$Res> {
  _$LocationAmenityDataModelCopyWithImpl(this._value, this._then);

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
              as AmenityDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AmenityDataModelCopyWith<$Res> get amenities {
    return $AmenityDataModelCopyWith<$Res>(_value.amenities, (value) {
      return _then(_value.copyWith(amenities: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationAmenityDataModelImplCopyWith<$Res>
    implements $LocationAmenityDataModelCopyWith<$Res> {
  factory _$$LocationAmenityDataModelImplCopyWith(
          _$LocationAmenityDataModelImpl value,
          $Res Function(_$LocationAmenityDataModelImpl) then) =
      __$$LocationAmenityDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'amenities') AmenityDataModel amenities});

  @override
  $AmenityDataModelCopyWith<$Res> get amenities;
}

/// @nodoc
class __$$LocationAmenityDataModelImplCopyWithImpl<$Res>
    extends _$LocationAmenityDataModelCopyWithImpl<$Res,
        _$LocationAmenityDataModelImpl>
    implements _$$LocationAmenityDataModelImplCopyWith<$Res> {
  __$$LocationAmenityDataModelImplCopyWithImpl(
      _$LocationAmenityDataModelImpl _value,
      $Res Function(_$LocationAmenityDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amenities = null,
  }) {
    return _then(_$LocationAmenityDataModelImpl(
      amenities: null == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as AmenityDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationAmenityDataModelImpl implements _LocationAmenityDataModel {
  const _$LocationAmenityDataModelImpl(
      {@JsonKey(name: 'amenities') required this.amenities});

  factory _$LocationAmenityDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationAmenityDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'amenities')
  final AmenityDataModel amenities;

  @override
  String toString() {
    return 'LocationAmenityDataModel(amenities: $amenities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationAmenityDataModelImpl &&
            (identical(other.amenities, amenities) ||
                other.amenities == amenities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amenities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationAmenityDataModelImplCopyWith<_$LocationAmenityDataModelImpl>
      get copyWith => __$$LocationAmenityDataModelImplCopyWithImpl<
          _$LocationAmenityDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationAmenityDataModelImplToJson(
      this,
    );
  }
}

abstract class _LocationAmenityDataModel implements LocationAmenityDataModel {
  const factory _LocationAmenityDataModel(
          {@JsonKey(name: 'amenities')
          required final AmenityDataModel amenities}) =
      _$LocationAmenityDataModelImpl;

  factory _LocationAmenityDataModel.fromJson(Map<String, dynamic> json) =
      _$LocationAmenityDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'amenities')
  AmenityDataModel get amenities;
  @override
  @JsonKey(ignore: true)
  _$$LocationAmenityDataModelImplCopyWith<_$LocationAmenityDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
