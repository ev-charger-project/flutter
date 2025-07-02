// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RouteEntity {
  List<RoutePointEntity> get route => throw _privateConstructorUsedError;
  List<ChargerEntity> get chargers => throw _privateConstructorUsedError;
  String get hashcode => throw _privateConstructorUsedError;

  /// Create a copy of RouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteEntityCopyWith<RouteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteEntityCopyWith<$Res> {
  factory $RouteEntityCopyWith(
          RouteEntity value, $Res Function(RouteEntity) then) =
      _$RouteEntityCopyWithImpl<$Res, RouteEntity>;
  @useResult
  $Res call(
      {List<RoutePointEntity> route,
      List<ChargerEntity> chargers,
      String hashcode});
}

/// @nodoc
class _$RouteEntityCopyWithImpl<$Res, $Val extends RouteEntity>
    implements $RouteEntityCopyWith<$Res> {
  _$RouteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteEntity
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
              as List<RoutePointEntity>,
      chargers: null == chargers
          ? _value.chargers
          : chargers // ignore: cast_nullable_to_non_nullable
              as List<ChargerEntity>,
      hashcode: null == hashcode
          ? _value.hashcode
          : hashcode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RouteEntityImplCopyWith<$Res>
    implements $RouteEntityCopyWith<$Res> {
  factory _$$RouteEntityImplCopyWith(
          _$RouteEntityImpl value, $Res Function(_$RouteEntityImpl) then) =
      __$$RouteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RoutePointEntity> route,
      List<ChargerEntity> chargers,
      String hashcode});
}

/// @nodoc
class __$$RouteEntityImplCopyWithImpl<$Res>
    extends _$RouteEntityCopyWithImpl<$Res, _$RouteEntityImpl>
    implements _$$RouteEntityImplCopyWith<$Res> {
  __$$RouteEntityImplCopyWithImpl(
      _$RouteEntityImpl _value, $Res Function(_$RouteEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? chargers = null,
    Object? hashcode = null,
  }) {
    return _then(_$RouteEntityImpl(
      route: null == route
          ? _value._route
          : route // ignore: cast_nullable_to_non_nullable
              as List<RoutePointEntity>,
      chargers: null == chargers
          ? _value._chargers
          : chargers // ignore: cast_nullable_to_non_nullable
              as List<ChargerEntity>,
      hashcode: null == hashcode
          ? _value.hashcode
          : hashcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RouteEntityImpl implements _RouteEntity {
  const _$RouteEntityImpl(
      {required final List<RoutePointEntity> route,
      required final List<ChargerEntity> chargers,
      required this.hashcode})
      : _route = route,
        _chargers = chargers;

  final List<RoutePointEntity> _route;
  @override
  List<RoutePointEntity> get route {
    if (_route is EqualUnmodifiableListView) return _route;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_route);
  }

  final List<ChargerEntity> _chargers;
  @override
  List<ChargerEntity> get chargers {
    if (_chargers is EqualUnmodifiableListView) return _chargers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chargers);
  }

  @override
  final String hashcode;

  @override
  String toString() {
    return 'RouteEntity(route: $route, chargers: $chargers, hashcode: $hashcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteEntityImpl &&
            const DeepCollectionEquality().equals(other._route, _route) &&
            const DeepCollectionEquality().equals(other._chargers, _chargers) &&
            (identical(other.hashcode, hashcode) ||
                other.hashcode == hashcode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_route),
      const DeepCollectionEquality().hash(_chargers),
      hashcode);

  /// Create a copy of RouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteEntityImplCopyWith<_$RouteEntityImpl> get copyWith =>
      __$$RouteEntityImplCopyWithImpl<_$RouteEntityImpl>(this, _$identity);
}

abstract class _RouteEntity implements RouteEntity {
  const factory _RouteEntity(
      {required final List<RoutePointEntity> route,
      required final List<ChargerEntity> chargers,
      required final String hashcode}) = _$RouteEntityImpl;

  @override
  List<RoutePointEntity> get route;
  @override
  List<ChargerEntity> get chargers;
  @override
  String get hashcode;

  /// Create a copy of RouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteEntityImplCopyWith<_$RouteEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoutePointEntity {
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;

  /// Create a copy of RoutePointEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutePointEntityCopyWith<RoutePointEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutePointEntityCopyWith<$Res> {
  factory $RoutePointEntityCopyWith(
          RoutePointEntity value, $Res Function(RoutePointEntity) then) =
      _$RoutePointEntityCopyWithImpl<$Res, RoutePointEntity>;
  @useResult
  $Res call({double lat, double long});
}

/// @nodoc
class _$RoutePointEntityCopyWithImpl<$Res, $Val extends RoutePointEntity>
    implements $RoutePointEntityCopyWith<$Res> {
  _$RoutePointEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutePointEntity
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
abstract class _$$RoutePointEntityImplCopyWith<$Res>
    implements $RoutePointEntityCopyWith<$Res> {
  factory _$$RoutePointEntityImplCopyWith(_$RoutePointEntityImpl value,
          $Res Function(_$RoutePointEntityImpl) then) =
      __$$RoutePointEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double long});
}

/// @nodoc
class __$$RoutePointEntityImplCopyWithImpl<$Res>
    extends _$RoutePointEntityCopyWithImpl<$Res, _$RoutePointEntityImpl>
    implements _$$RoutePointEntityImplCopyWith<$Res> {
  __$$RoutePointEntityImplCopyWithImpl(_$RoutePointEntityImpl _value,
      $Res Function(_$RoutePointEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoutePointEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$RoutePointEntityImpl(
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

class _$RoutePointEntityImpl implements _RoutePointEntity {
  const _$RoutePointEntityImpl({required this.lat, required this.long});

  @override
  final double lat;
  @override
  final double long;

  @override
  String toString() {
    return 'RoutePointEntity(lat: $lat, long: $long)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutePointEntityImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, long);

  /// Create a copy of RoutePointEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutePointEntityImplCopyWith<_$RoutePointEntityImpl> get copyWith =>
      __$$RoutePointEntityImplCopyWithImpl<_$RoutePointEntityImpl>(
          this, _$identity);
}

abstract class _RoutePointEntity implements RoutePointEntity {
  const factory _RoutePointEntity(
      {required final double lat,
      required final double long}) = _$RoutePointEntityImpl;

  @override
  double get lat;
  @override
  double get long;

  /// Create a copy of RoutePointEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutePointEntityImplCopyWith<_$RoutePointEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChargerEntity {
  String get id => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;

  /// Create a copy of ChargerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChargerEntityCopyWith<ChargerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargerEntityCopyWith<$Res> {
  factory $ChargerEntityCopyWith(
          ChargerEntity value, $Res Function(ChargerEntity) then) =
      _$ChargerEntityCopyWithImpl<$Res, ChargerEntity>;
  @useResult
  $Res call({String id, double lat, double long});
}

/// @nodoc
class _$ChargerEntityCopyWithImpl<$Res, $Val extends ChargerEntity>
    implements $ChargerEntityCopyWith<$Res> {
  _$ChargerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChargerEntity
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
abstract class _$$ChargerEntityImplCopyWith<$Res>
    implements $ChargerEntityCopyWith<$Res> {
  factory _$$ChargerEntityImplCopyWith(
          _$ChargerEntityImpl value, $Res Function(_$ChargerEntityImpl) then) =
      __$$ChargerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double lat, double long});
}

/// @nodoc
class __$$ChargerEntityImplCopyWithImpl<$Res>
    extends _$ChargerEntityCopyWithImpl<$Res, _$ChargerEntityImpl>
    implements _$$ChargerEntityImplCopyWith<$Res> {
  __$$ChargerEntityImplCopyWithImpl(
      _$ChargerEntityImpl _value, $Res Function(_$ChargerEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$ChargerEntityImpl(
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

class _$ChargerEntityImpl implements _ChargerEntity {
  const _$ChargerEntityImpl(
      {required this.id, required this.lat, required this.long});

  @override
  final String id;
  @override
  final double lat;
  @override
  final double long;

  @override
  String toString() {
    return 'ChargerEntity(id: $id, lat: $lat, long: $long)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargerEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, lat, long);

  /// Create a copy of ChargerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargerEntityImplCopyWith<_$ChargerEntityImpl> get copyWith =>
      __$$ChargerEntityImplCopyWithImpl<_$ChargerEntityImpl>(this, _$identity);
}

abstract class _ChargerEntity implements ChargerEntity {
  const factory _ChargerEntity(
      {required final String id,
      required final double lat,
      required final double long}) = _$ChargerEntityImpl;

  @override
  String get id;
  @override
  double get lat;
  @override
  double get long;

  /// Create a copy of ChargerEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargerEntityImplCopyWith<_$ChargerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
