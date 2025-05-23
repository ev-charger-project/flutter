// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charger_marker_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChargerMarkerDataModel _$ChargerMarkerDataModelFromJson(
    Map<String, dynamic> json) {
  return _ChargerMarkerDataModel.fromJson(json);
}

/// @nodoc
mixin _$ChargerMarkerDataModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargerMarkerDataModelCopyWith<ChargerMarkerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargerMarkerDataModelCopyWith<$Res> {
  factory $ChargerMarkerDataModelCopyWith(ChargerMarkerDataModel value,
          $Res Function(ChargerMarkerDataModel) then) =
      _$ChargerMarkerDataModelCopyWithImpl<$Res, ChargerMarkerDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, double latitude, double longitude});
}

/// @nodoc
class _$ChargerMarkerDataModelCopyWithImpl<$Res,
        $Val extends ChargerMarkerDataModel>
    implements $ChargerMarkerDataModelCopyWith<$Res> {
  _$ChargerMarkerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ChargerMarkerDataModelImplCopyWith<$Res>
    implements $ChargerMarkerDataModelCopyWith<$Res> {
  factory _$$ChargerMarkerDataModelImplCopyWith(
          _$ChargerMarkerDataModelImpl value,
          $Res Function(_$ChargerMarkerDataModelImpl) then) =
      __$$ChargerMarkerDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, double latitude, double longitude});
}

/// @nodoc
class __$$ChargerMarkerDataModelImplCopyWithImpl<$Res>
    extends _$ChargerMarkerDataModelCopyWithImpl<$Res,
        _$ChargerMarkerDataModelImpl>
    implements _$$ChargerMarkerDataModelImplCopyWith<$Res> {
  __$$ChargerMarkerDataModelImplCopyWithImpl(
      _$ChargerMarkerDataModelImpl _value,
      $Res Function(_$ChargerMarkerDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$ChargerMarkerDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$ChargerMarkerDataModelImpl implements _ChargerMarkerDataModel {
  const _$ChargerMarkerDataModelImpl(
      {@JsonKey(name: 'id') required this.id,
      required this.latitude,
      required this.longitude});

  factory _$ChargerMarkerDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChargerMarkerDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'ChargerMarkerDataModel(id: $id, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargerMarkerDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargerMarkerDataModelImplCopyWith<_$ChargerMarkerDataModelImpl>
      get copyWith => __$$ChargerMarkerDataModelImplCopyWithImpl<
          _$ChargerMarkerDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChargerMarkerDataModelImplToJson(
      this,
    );
  }
}

abstract class _ChargerMarkerDataModel implements ChargerMarkerDataModel {
  const factory _ChargerMarkerDataModel(
      {@JsonKey(name: 'id') required final String id,
      required final double latitude,
      required final double longitude}) = _$ChargerMarkerDataModelImpl;

  factory _ChargerMarkerDataModel.fromJson(Map<String, dynamic> json) =
      _$ChargerMarkerDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$ChargerMarkerDataModelImplCopyWith<_$ChargerMarkerDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
