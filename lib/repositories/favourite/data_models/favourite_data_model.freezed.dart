// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavouriteDataModel _$FavouriteDataModelFromJson(Map<String, dynamic> json) {
  return _Favourite.fromJson(json);
}

/// @nodoc
mixin _$FavouriteDataModel {
  @JsonKey(name: 'id')
  String get station_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  LocationDataModel get favourite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouriteDataModelCopyWith<FavouriteDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteDataModelCopyWith<$Res> {
  factory $FavouriteDataModelCopyWith(
          FavouriteDataModel value, $Res Function(FavouriteDataModel) then) =
      _$FavouriteDataModelCopyWithImpl<$Res, FavouriteDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String station_name,
      @JsonKey(name: 'location') LocationDataModel favourite});

  $LocationDataModelCopyWith<$Res> get favourite;
}

/// @nodoc
class _$FavouriteDataModelCopyWithImpl<$Res, $Val extends FavouriteDataModel>
    implements $FavouriteDataModelCopyWith<$Res> {
  _$FavouriteDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station_name = null,
    Object? favourite = null,
  }) {
    return _then(_value.copyWith(
      station_name: null == station_name
          ? _value.station_name
          : station_name // ignore: cast_nullable_to_non_nullable
              as String,
      favourite: null == favourite
          ? _value.favourite
          : favourite // ignore: cast_nullable_to_non_nullable
              as LocationDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDataModelCopyWith<$Res> get favourite {
    return $LocationDataModelCopyWith<$Res>(_value.favourite, (value) {
      return _then(_value.copyWith(favourite: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavouriteImplCopyWith<$Res>
    implements $FavouriteDataModelCopyWith<$Res> {
  factory _$$FavouriteImplCopyWith(
          _$FavouriteImpl value, $Res Function(_$FavouriteImpl) then) =
      __$$FavouriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String station_name,
      @JsonKey(name: 'location') LocationDataModel favourite});

  @override
  $LocationDataModelCopyWith<$Res> get favourite;
}

/// @nodoc
class __$$FavouriteImplCopyWithImpl<$Res>
    extends _$FavouriteDataModelCopyWithImpl<$Res, _$FavouriteImpl>
    implements _$$FavouriteImplCopyWith<$Res> {
  __$$FavouriteImplCopyWithImpl(
      _$FavouriteImpl _value, $Res Function(_$FavouriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station_name = null,
    Object? favourite = null,
  }) {
    return _then(_$FavouriteImpl(
      station_name: null == station_name
          ? _value.station_name
          : station_name // ignore: cast_nullable_to_non_nullable
              as String,
      favourite: null == favourite
          ? _value.favourite
          : favourite // ignore: cast_nullable_to_non_nullable
              as LocationDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouriteImpl implements _Favourite {
  const _$FavouriteImpl(
      {@JsonKey(name: 'id') required this.station_name,
      @JsonKey(name: 'location') required this.favourite});

  factory _$FavouriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouriteImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String station_name;
  @override
  @JsonKey(name: 'location')
  final LocationDataModel favourite;

  @override
  String toString() {
    return 'FavouriteDataModel(station_name: $station_name, favourite: $favourite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteImpl &&
            (identical(other.station_name, station_name) ||
                other.station_name == station_name) &&
            (identical(other.favourite, favourite) ||
                other.favourite == favourite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, station_name, favourite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteImplCopyWith<_$FavouriteImpl> get copyWith =>
      __$$FavouriteImplCopyWithImpl<_$FavouriteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouriteImplToJson(
      this,
    );
  }
}

abstract class _Favourite implements FavouriteDataModel {
  const factory _Favourite(
      {@JsonKey(name: 'id') required final String station_name,
      @JsonKey(name: 'location')
      required final LocationDataModel favourite}) = _$FavouriteImpl;

  factory _Favourite.fromJson(Map<String, dynamic> json) =
      _$FavouriteImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get station_name;
  @override
  @JsonKey(name: 'location')
  LocationDataModel get favourite;
  @override
  @JsonKey(ignore: true)
  _$$FavouriteImplCopyWith<_$FavouriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
