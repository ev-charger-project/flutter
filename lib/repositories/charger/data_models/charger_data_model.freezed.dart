// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charger_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChargerDataModel _$ChargerDataModelFromJson(Map<String, dynamic> json) {
  return _Charger.fromJson(json);
}

/// @nodoc
mixin _$ChargerDataModel {
  @JsonKey(name: 'station_name')
  String get station_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'availability')
  String get availability => throw _privateConstructorUsedError;
  @JsonKey(name: 'ev_charger_ports')
  List<PortDataModel> get ports => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargerDataModelCopyWith<ChargerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargerDataModelCopyWith<$Res> {
  factory $ChargerDataModelCopyWith(
          ChargerDataModel value, $Res Function(ChargerDataModel) then) =
      _$ChargerDataModelCopyWithImpl<$Res, ChargerDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'station_name') String station_name,
      @JsonKey(name: 'availability') String availability,
      @JsonKey(name: 'ev_charger_ports') List<PortDataModel> ports});
}

/// @nodoc
class _$ChargerDataModelCopyWithImpl<$Res, $Val extends ChargerDataModel>
    implements $ChargerDataModelCopyWith<$Res> {
  _$ChargerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station_name = null,
    Object? availability = null,
    Object? ports = null,
  }) {
    return _then(_value.copyWith(
      station_name: null == station_name
          ? _value.station_name
          : station_name // ignore: cast_nullable_to_non_nullable
              as String,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String,
      ports: null == ports
          ? _value.ports
          : ports // ignore: cast_nullable_to_non_nullable
              as List<PortDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChargerImplCopyWith<$Res>
    implements $ChargerDataModelCopyWith<$Res> {
  factory _$$ChargerImplCopyWith(
          _$ChargerImpl value, $Res Function(_$ChargerImpl) then) =
      __$$ChargerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'station_name') String station_name,
      @JsonKey(name: 'availability') String availability,
      @JsonKey(name: 'ev_charger_ports') List<PortDataModel> ports});
}

/// @nodoc
class __$$ChargerImplCopyWithImpl<$Res>
    extends _$ChargerDataModelCopyWithImpl<$Res, _$ChargerImpl>
    implements _$$ChargerImplCopyWith<$Res> {
  __$$ChargerImplCopyWithImpl(
      _$ChargerImpl _value, $Res Function(_$ChargerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station_name = null,
    Object? availability = null,
    Object? ports = null,
  }) {
    return _then(_$ChargerImpl(
      station_name: null == station_name
          ? _value.station_name
          : station_name // ignore: cast_nullable_to_non_nullable
              as String,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String,
      ports: null == ports
          ? _value._ports
          : ports // ignore: cast_nullable_to_non_nullable
              as List<PortDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChargerImpl implements _Charger {
  const _$ChargerImpl(
      {@JsonKey(name: 'station_name') required this.station_name,
      @JsonKey(name: 'availability') required this.availability,
      @JsonKey(name: 'ev_charger_ports')
      required final List<PortDataModel> ports})
      : _ports = ports;

  factory _$ChargerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChargerImplFromJson(json);

  @override
  @JsonKey(name: 'station_name')
  final String station_name;
  @override
  @JsonKey(name: 'availability')
  final String availability;
  final List<PortDataModel> _ports;
  @override
  @JsonKey(name: 'ev_charger_ports')
  List<PortDataModel> get ports {
    if (_ports is EqualUnmodifiableListView) return _ports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ports);
  }

  @override
  String toString() {
    return 'ChargerDataModel(station_name: $station_name, availability: $availability, ports: $ports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargerImpl &&
            (identical(other.station_name, station_name) ||
                other.station_name == station_name) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            const DeepCollectionEquality().equals(other._ports, _ports));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, station_name, availability,
      const DeepCollectionEquality().hash(_ports));

  @JsonKey(ignore: true)
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

abstract class _Charger implements ChargerDataModel {
  const factory _Charger(
      {@JsonKey(name: 'station_name') required final String station_name,
      @JsonKey(name: 'availability') required final String availability,
      @JsonKey(name: 'ev_charger_ports')
      required final List<PortDataModel> ports}) = _$ChargerImpl;

  factory _Charger.fromJson(Map<String, dynamic> json) = _$ChargerImpl.fromJson;

  @override
  @JsonKey(name: 'station_name')
  String get station_name;
  @override
  @JsonKey(name: 'availability')
  String get availability;
  @override
  @JsonKey(name: 'ev_charger_ports')
  List<PortDataModel> get ports;
  @override
  @JsonKey(ignore: true)
  _$$ChargerImplCopyWith<_$ChargerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PortDataModel _$PortDataModelFromJson(Map<String, dynamic> json) {
  return _PortDataModel.fromJson(json);
}

/// @nodoc
mixin _$PortDataModel {
  @JsonKey(name: 'power_plug_type')
  PowerPlugTypeDataModel get power_plug_type =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'power_model')
  PowerOutputDataModel get power_model => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortDataModelCopyWith<PortDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortDataModelCopyWith<$Res> {
  factory $PortDataModelCopyWith(
          PortDataModel value, $Res Function(PortDataModel) then) =
      _$PortDataModelCopyWithImpl<$Res, PortDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'power_plug_type') PowerPlugTypeDataModel power_plug_type,
      @JsonKey(name: 'power_model') PowerOutputDataModel power_model});

  $PowerPlugTypeDataModelCopyWith<$Res> get power_plug_type;
  $PowerOutputDataModelCopyWith<$Res> get power_model;
}

/// @nodoc
class _$PortDataModelCopyWithImpl<$Res, $Val extends PortDataModel>
    implements $PortDataModelCopyWith<$Res> {
  _$PortDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as PowerPlugTypeDataModel,
      power_model: null == power_model
          ? _value.power_model
          : power_model // ignore: cast_nullable_to_non_nullable
              as PowerOutputDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PowerPlugTypeDataModelCopyWith<$Res> get power_plug_type {
    return $PowerPlugTypeDataModelCopyWith<$Res>(_value.power_plug_type,
        (value) {
      return _then(_value.copyWith(power_plug_type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PowerOutputDataModelCopyWith<$Res> get power_model {
    return $PowerOutputDataModelCopyWith<$Res>(_value.power_model, (value) {
      return _then(_value.copyWith(power_model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PortDataModelImplCopyWith<$Res>
    implements $PortDataModelCopyWith<$Res> {
  factory _$$PortDataModelImplCopyWith(
          _$PortDataModelImpl value, $Res Function(_$PortDataModelImpl) then) =
      __$$PortDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'power_plug_type') PowerPlugTypeDataModel power_plug_type,
      @JsonKey(name: 'power_model') PowerOutputDataModel power_model});

  @override
  $PowerPlugTypeDataModelCopyWith<$Res> get power_plug_type;
  @override
  $PowerOutputDataModelCopyWith<$Res> get power_model;
}

/// @nodoc
class __$$PortDataModelImplCopyWithImpl<$Res>
    extends _$PortDataModelCopyWithImpl<$Res, _$PortDataModelImpl>
    implements _$$PortDataModelImplCopyWith<$Res> {
  __$$PortDataModelImplCopyWithImpl(
      _$PortDataModelImpl _value, $Res Function(_$PortDataModelImpl) _then)
      : super(_value, _then);

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
              as PowerPlugTypeDataModel,
      power_model: null == power_model
          ? _value.power_model
          : power_model // ignore: cast_nullable_to_non_nullable
              as PowerOutputDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PortDataModelImpl implements _PortDataModel {
  const _$PortDataModelImpl(
      {@JsonKey(name: 'power_plug_type') required this.power_plug_type,
      @JsonKey(name: 'power_model') required this.power_model});

  factory _$PortDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'power_plug_type')
  final PowerPlugTypeDataModel power_plug_type;
  @override
  @JsonKey(name: 'power_model')
  final PowerOutputDataModel power_model;

  @override
  String toString() {
    return 'PortDataModel(power_plug_type: $power_plug_type, power_model: $power_model)';
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, power_plug_type, power_model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PortDataModelImplCopyWith<_$PortDataModelImpl> get copyWith =>
      __$$PortDataModelImplCopyWithImpl<_$PortDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PortDataModelImplToJson(
      this,
    );
  }
}

abstract class _PortDataModel implements PortDataModel {
  const factory _PortDataModel(
      {@JsonKey(name: 'power_plug_type')
      required final PowerPlugTypeDataModel power_plug_type,
      @JsonKey(name: 'power_model')
      required final PowerOutputDataModel power_model}) = _$PortDataModelImpl;

  factory _PortDataModel.fromJson(Map<String, dynamic> json) =
      _$PortDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'power_plug_type')
  PowerPlugTypeDataModel get power_plug_type;
  @override
  @JsonKey(name: 'power_model')
  PowerOutputDataModel get power_model;
  @override
  @JsonKey(ignore: true)
  _$$PortDataModelImplCopyWith<_$PortDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
