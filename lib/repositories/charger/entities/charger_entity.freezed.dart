// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charger_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChargerEntity {
  String? get station_name => throw _privateConstructorUsedError;
  String get availability => throw _privateConstructorUsedError;
  List<Port> get ports => throw _privateConstructorUsedError;

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
  $Res call({String? station_name, String availability, List<Port> ports});
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
    Object? station_name = freezed,
    Object? availability = null,
    Object? ports = null,
  }) {
    return _then(_value.copyWith(
      station_name: freezed == station_name
          ? _value.station_name
          : station_name // ignore: cast_nullable_to_non_nullable
              as String?,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String,
      ports: null == ports
          ? _value.ports
          : ports // ignore: cast_nullable_to_non_nullable
              as List<Port>,
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
  $Res call({String? station_name, String availability, List<Port> ports});
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
    Object? station_name = freezed,
    Object? availability = null,
    Object? ports = null,
  }) {
    return _then(_$ChargerEntityImpl(
      station_name: freezed == station_name
          ? _value.station_name
          : station_name // ignore: cast_nullable_to_non_nullable
              as String?,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String,
      ports: null == ports
          ? _value._ports
          : ports // ignore: cast_nullable_to_non_nullable
              as List<Port>,
    ));
  }
}

/// @nodoc

class _$ChargerEntityImpl implements _ChargerEntity {
  const _$ChargerEntityImpl(
      {this.station_name,
      required this.availability,
      required final List<Port> ports})
      : _ports = ports;

  @override
  final String? station_name;
  @override
  final String availability;
  final List<Port> _ports;
  @override
  List<Port> get ports {
    if (_ports is EqualUnmodifiableListView) return _ports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ports);
  }

  @override
  String toString() {
    return 'ChargerEntity(station_name: $station_name, availability: $availability, ports: $ports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargerEntityImpl &&
            (identical(other.station_name, station_name) ||
                other.station_name == station_name) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            const DeepCollectionEquality().equals(other._ports, _ports));
  }

  @override
  int get hashCode => Object.hash(runtimeType, station_name, availability,
      const DeepCollectionEquality().hash(_ports));

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
      {final String? station_name,
      required final String availability,
      required final List<Port> ports}) = _$ChargerEntityImpl;

  @override
  String? get station_name;
  @override
  String get availability;
  @override
  List<Port> get ports;

  /// Create a copy of ChargerEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargerEntityImplCopyWith<_$ChargerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Port {
  PowerPlugTypeEntity get power_plug_type => throw _privateConstructorUsedError;
  PowerOutputEntity get power_model => throw _privateConstructorUsedError;

  /// Create a copy of Port
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PortCopyWith<Port> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortCopyWith<$Res> {
  factory $PortCopyWith(Port value, $Res Function(Port) then) =
      _$PortCopyWithImpl<$Res, Port>;
  @useResult
  $Res call(
      {PowerPlugTypeEntity power_plug_type, PowerOutputEntity power_model});

  $PowerPlugTypeEntityCopyWith<$Res> get power_plug_type;
  $PowerOutputEntityCopyWith<$Res> get power_model;
}

/// @nodoc
class _$PortCopyWithImpl<$Res, $Val extends Port>
    implements $PortCopyWith<$Res> {
  _$PortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Port
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? power_plug_type = null,
    Object? power_model = null,
  }) {
    return _then(_value.copyWith(
      power_plug_type: null == power_plug_type
          ? _value.power_plug_type
          : power_plug_type // ignore: cast_nullable_to_non_nullable
              as PowerPlugTypeEntity,
      power_model: null == power_model
          ? _value.power_model
          : power_model // ignore: cast_nullable_to_non_nullable
              as PowerOutputEntity,
    ) as $Val);
  }

  /// Create a copy of Port
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PowerPlugTypeEntityCopyWith<$Res> get power_plug_type {
    return $PowerPlugTypeEntityCopyWith<$Res>(_value.power_plug_type, (value) {
      return _then(_value.copyWith(power_plug_type: value) as $Val);
    });
  }

  /// Create a copy of Port
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PowerOutputEntityCopyWith<$Res> get power_model {
    return $PowerOutputEntityCopyWith<$Res>(_value.power_model, (value) {
      return _then(_value.copyWith(power_model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PortDataModelImplCopyWith<$Res>
    implements $PortCopyWith<$Res> {
  factory _$$PortDataModelImplCopyWith(
          _$PortDataModelImpl value, $Res Function(_$PortDataModelImpl) then) =
      __$$PortDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PowerPlugTypeEntity power_plug_type, PowerOutputEntity power_model});

  @override
  $PowerPlugTypeEntityCopyWith<$Res> get power_plug_type;
  @override
  $PowerOutputEntityCopyWith<$Res> get power_model;
}

/// @nodoc
class __$$PortDataModelImplCopyWithImpl<$Res>
    extends _$PortCopyWithImpl<$Res, _$PortDataModelImpl>
    implements _$$PortDataModelImplCopyWith<$Res> {
  __$$PortDataModelImplCopyWithImpl(
      _$PortDataModelImpl _value, $Res Function(_$PortDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Port
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? power_plug_type = null,
    Object? power_model = null,
  }) {
    return _then(_$PortDataModelImpl(
      power_plug_type: null == power_plug_type
          ? _value.power_plug_type
          : power_plug_type // ignore: cast_nullable_to_non_nullable
              as PowerPlugTypeEntity,
      power_model: null == power_model
          ? _value.power_model
          : power_model // ignore: cast_nullable_to_non_nullable
              as PowerOutputEntity,
    ));
  }
}

/// @nodoc

class _$PortDataModelImpl implements _PortDataModel {
  const _$PortDataModelImpl(
      {required this.power_plug_type, required this.power_model});

  @override
  final PowerPlugTypeEntity power_plug_type;
  @override
  final PowerOutputEntity power_model;

  @override
  String toString() {
    return 'Port(power_plug_type: $power_plug_type, power_model: $power_model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortDataModelImpl &&
            (identical(other.power_plug_type, power_plug_type) ||
                other.power_plug_type == power_plug_type) &&
            (identical(other.power_model, power_model) ||
                other.power_model == power_model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, power_plug_type, power_model);

  /// Create a copy of Port
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PortDataModelImplCopyWith<_$PortDataModelImpl> get copyWith =>
      __$$PortDataModelImplCopyWithImpl<_$PortDataModelImpl>(this, _$identity);
}

abstract class _PortDataModel implements Port {
  const factory _PortDataModel(
      {required final PowerPlugTypeEntity power_plug_type,
      required final PowerOutputEntity power_model}) = _$PortDataModelImpl;

  @override
  PowerPlugTypeEntity get power_plug_type;
  @override
  PowerOutputEntity get power_model;

  /// Create a copy of Port
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PortDataModelImplCopyWith<_$PortDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
