// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RouteDataModel _$RouteDataModelFromJson(Map<String, dynamic> json) {
  return _RouteDataModel.fromJson(json);
}

/// @nodoc
mixin _$RouteDataModel {
  @JsonKey(name: 'coordinates')
  List<RoutePoint> get route => throw _privateConstructorUsedError;
  @JsonKey(name: 'locations')
  List<Charger> get chargers => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview_polyline')
  String get hashcode => throw _privateConstructorUsedError;

  /// Serializes this RouteDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RouteDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteDataModelCopyWith<RouteDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteDataModelCopyWith<$Res> {
  factory $RouteDataModelCopyWith(
          RouteDataModel value, $Res Function(RouteDataModel) then) =
      _$RouteDataModelCopyWithImpl<$Res, RouteDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'coordinates') List<RoutePoint> route,
      @JsonKey(name: 'locations') List<Charger> chargers,
      @JsonKey(name: 'overview_polyline') String hashcode});
}

/// @nodoc
class _$RouteDataModelCopyWithImpl<$Res, $Val extends RouteDataModel>
    implements $RouteDataModelCopyWith<$Res> {
  _$RouteDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? chargers = null,
    Object? hashcode = null,
  }) {
    return _then(_value.copyWith(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as List<RoutePoint>,
      chargers: null == chargers
          ? _value.chargers
          : chargers // ignore: cast_nullable_to_non_nullable
              as List<Charger>,
      hashcode: null == hashcode
          ? _value.hashcode
          : hashcode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RouteDataModelImplCopyWith<$Res>
    implements $RouteDataModelCopyWith<$Res> {
  factory _$$RouteDataModelImplCopyWith(_$RouteDataModelImpl value,
          $Res Function(_$RouteDataModelImpl) then) =
      __$$RouteDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'coordinates') List<RoutePoint> route,
      @JsonKey(name: 'locations') List<Charger> chargers,
      @JsonKey(name: 'overview_polyline') String hashcode});
}

/// @nodoc
class __$$RouteDataModelImplCopyWithImpl<$Res>
    extends _$RouteDataModelCopyWithImpl<$Res, _$RouteDataModelImpl>
    implements _$$RouteDataModelImplCopyWith<$Res> {
  __$$RouteDataModelImplCopyWithImpl(
      _$RouteDataModelImpl _value, $Res Function(_$RouteDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? chargers = null,
    Object? hashcode = null,
  }) {
    return _then(_$RouteDataModelImpl(
      route: null == route
          ? _value._route
          : route // ignore: cast_nullable_to_non_nullable
              as List<RoutePoint>,
      chargers: null == chargers
          ? _value._chargers
          : chargers // ignore: cast_nullable_to_non_nullable
              as List<Charger>,
      hashcode: null == hashcode
          ? _value.hashcode
          : hashcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteDataModelImpl implements _RouteDataModel {
  const _$RouteDataModelImpl(
      {@JsonKey(name: 'coordinates') final List<RoutePoint> route = const [],
      @JsonKey(name: 'locations') final List<Charger> chargers = const [],
      @JsonKey(name: 'overview_polyline') this.hashcode = ''})
      : _route = route,
        _chargers = chargers;

  factory _$RouteDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteDataModelImplFromJson(json);

  final List<RoutePoint> _route;
  @override
  @JsonKey(name: 'coordinates')
  List<RoutePoint> get route {
    if (_route is EqualUnmodifiableListView) return _route;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_route);
  }

  final List<Charger> _chargers;
  @override
  @JsonKey(name: 'locations')
  List<Charger> get chargers {
    if (_chargers is EqualUnmodifiableListView) return _chargers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chargers);
  }

  @override
  @JsonKey(name: 'overview_polyline')
  final String hashcode;

  @override
  String toString() {
    return 'RouteDataModel(route: $route, chargers: $chargers, hashcode: $hashcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteDataModelImpl &&
            const DeepCollectionEquality().equals(other._route, _route) &&
            const DeepCollectionEquality().equals(other._chargers, _chargers) &&
            (identical(other.hashcode, hashcode) ||
                other.hashcode == hashcode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_route),
      const DeepCollectionEquality().hash(_chargers),
      hashcode);

  /// Create a copy of RouteDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteDataModelImplCopyWith<_$RouteDataModelImpl> get copyWith =>
      __$$RouteDataModelImplCopyWithImpl<_$RouteDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteDataModelImplToJson(
      this,
    );
  }
}

abstract class _RouteDataModel implements RouteDataModel {
  const factory _RouteDataModel(
          {@JsonKey(name: 'coordinates') final List<RoutePoint> route,
          @JsonKey(name: 'locations') final List<Charger> chargers,
          @JsonKey(name: 'overview_polyline') final String hashcode}) =
      _$RouteDataModelImpl;

  factory _RouteDataModel.fromJson(Map<String, dynamic> json) =
      _$RouteDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'coordinates')
  List<RoutePoint> get route;
  @override
  @JsonKey(name: 'locations')
  List<Charger> get chargers;
  @override
  @JsonKey(name: 'overview_polyline')
  String get hashcode;

  /// Create a copy of RouteDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteDataModelImplCopyWith<_$RouteDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoutePoint _$RoutePointFromJson(Map<String, dynamic> json) {
  return _RoutePoint.fromJson(json);
}

/// @nodoc
mixin _$RoutePoint {
  @JsonKey(name: 'lat')
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'lng')
  double get long => throw _privateConstructorUsedError;

  /// Serializes this RoutePoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoutePoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutePointCopyWith<RoutePoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutePointCopyWith<$Res> {
  factory $RoutePointCopyWith(
          RoutePoint value, $Res Function(RoutePoint) then) =
      _$RoutePointCopyWithImpl<$Res, RoutePoint>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lat') double lat, @JsonKey(name: 'lng') double long});
}

/// @nodoc
class _$RoutePointCopyWithImpl<$Res, $Val extends RoutePoint>
    implements $RoutePointCopyWith<$Res> {
  _$RoutePointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutePoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutePointImplCopyWith<$Res>
    implements $RoutePointCopyWith<$Res> {
  factory _$$RoutePointImplCopyWith(
          _$RoutePointImpl value, $Res Function(_$RoutePointImpl) then) =
      __$$RoutePointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lat') double lat, @JsonKey(name: 'lng') double long});
}

/// @nodoc
class __$$RoutePointImplCopyWithImpl<$Res>
    extends _$RoutePointCopyWithImpl<$Res, _$RoutePointImpl>
    implements _$$RoutePointImplCopyWith<$Res> {
  __$$RoutePointImplCopyWithImpl(
      _$RoutePointImpl _value, $Res Function(_$RoutePointImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoutePoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$RoutePointImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutePointImpl implements _RoutePoint {
  const _$RoutePointImpl(
      {@JsonKey(name: 'lat') required this.lat,
      @JsonKey(name: 'lng') required this.long});

  factory _$RoutePointImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutePointImplFromJson(json);

  @override
  @JsonKey(name: 'lat')
  final double lat;
  @override
  @JsonKey(name: 'lng')
  final double long;

  @override
  String toString() {
    return 'RoutePoint(lat: $lat, long: $long)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutePointImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, long);

  /// Create a copy of RoutePoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutePointImplCopyWith<_$RoutePointImpl> get copyWith =>
      __$$RoutePointImplCopyWithImpl<_$RoutePointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutePointImplToJson(
      this,
    );
  }
}

abstract class _RoutePoint implements RoutePoint {
  const factory _RoutePoint(
      {@JsonKey(name: 'lat') required final double lat,
      @JsonKey(name: 'lng') required final double long}) = _$RoutePointImpl;

  factory _RoutePoint.fromJson(Map<String, dynamic> json) =
      _$RoutePointImpl.fromJson;

  @override
  @JsonKey(name: 'lat')
  double get lat;
  @override
  @JsonKey(name: 'lng')
  double get long;

  /// Create a copy of RoutePoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutePointImplCopyWith<_$RoutePointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Charger _$ChargerFromJson(Map<String, dynamic> json) {
  return _Charger.fromJson(json);
}

/// @nodoc
mixin _$Charger {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double get long => throw _privateConstructorUsedError;

  /// Serializes this Charger to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Charger
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChargerCopyWith<Charger> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargerCopyWith<$Res> {
  factory $ChargerCopyWith(Charger value, $Res Function(Charger) then) =
      _$ChargerCopyWithImpl<$Res, Charger>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'latitude') double lat,
      @JsonKey(name: 'longitude') double long});
}

/// @nodoc
class _$ChargerCopyWithImpl<$Res, $Val extends Charger>
    implements $ChargerCopyWith<$Res> {
  _$ChargerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Charger
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChargerImplCopyWith<$Res> implements $ChargerCopyWith<$Res> {
  factory _$$ChargerImplCopyWith(
          _$ChargerImpl value, $Res Function(_$ChargerImpl) then) =
      __$$ChargerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'latitude') double lat,
      @JsonKey(name: 'longitude') double long});
}

/// @nodoc
class __$$ChargerImplCopyWithImpl<$Res>
    extends _$ChargerCopyWithImpl<$Res, _$ChargerImpl>
    implements _$$ChargerImplCopyWith<$Res> {
  __$$ChargerImplCopyWithImpl(
      _$ChargerImpl _value, $Res Function(_$ChargerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Charger
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$ChargerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChargerImpl implements _Charger {
  const _$ChargerImpl(
      {required this.id,
      @JsonKey(name: 'latitude') required this.lat,
      @JsonKey(name: 'longitude') required this.long});

  factory _$ChargerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChargerImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'latitude')
  final double lat;
  @override
  @JsonKey(name: 'longitude')
  final double long;

  @override
  String toString() {
    return 'Charger(id: $id, lat: $lat, long: $long)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, lat, long);

  /// Create a copy of Charger
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargerImplCopyWith<_$ChargerImpl> get copyWith =>
      __$$ChargerImplCopyWithImpl<_$ChargerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChargerImplToJson(
      this,
    );
  }
}

abstract class _Charger implements Charger {
  const factory _Charger(
      {required final String id,
      @JsonKey(name: 'latitude') required final double lat,
      @JsonKey(name: 'longitude') required final double long}) = _$ChargerImpl;

  factory _Charger.fromJson(Map<String, dynamic> json) = _$ChargerImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'latitude')
  double get lat;
  @override
  @JsonKey(name: 'longitude')
  double get long;

  /// Create a copy of Charger
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargerImplCopyWith<_$ChargerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
