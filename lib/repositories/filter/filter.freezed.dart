// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterEntity {
  int? get station_count => throw _privateConstructorUsedError;
  List<String> get charge_type => throw _privateConstructorUsedError;
  int get output_min => throw _privateConstructorUsedError;
  int get output_max => throw _privateConstructorUsedError;
  List<String> get amenities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterEntityCopyWith<FilterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEntityCopyWith<$Res> {
  factory $FilterEntityCopyWith(
          FilterEntity value, $Res Function(FilterEntity) then) =
      _$FilterEntityCopyWithImpl<$Res, FilterEntity>;
  @useResult
  $Res call(
      {int? station_count,
      List<String> charge_type,
      int output_min,
      int output_max,
      List<String> amenities});
}

/// @nodoc
class _$FilterEntityCopyWithImpl<$Res, $Val extends FilterEntity>
    implements $FilterEntityCopyWith<$Res> {
  _$FilterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station_count = freezed,
    Object? charge_type = null,
    Object? output_min = null,
    Object? output_max = null,
    Object? amenities = null,
  }) {
    return _then(_value.copyWith(
      station_count: freezed == station_count
          ? _value.station_count
          : station_count // ignore: cast_nullable_to_non_nullable
              as int?,
      charge_type: null == charge_type
          ? _value.charge_type
          : charge_type // ignore: cast_nullable_to_non_nullable
              as List<String>,
      output_min: null == output_min
          ? _value.output_min
          : output_min // ignore: cast_nullable_to_non_nullable
              as int,
      output_max: null == output_max
          ? _value.output_max
          : output_max // ignore: cast_nullable_to_non_nullable
              as int,
      amenities: null == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterEntityImplCopyWith<$Res>
    implements $FilterEntityCopyWith<$Res> {
  factory _$$FilterEntityImplCopyWith(
          _$FilterEntityImpl value, $Res Function(_$FilterEntityImpl) then) =
      __$$FilterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? station_count,
      List<String> charge_type,
      int output_min,
      int output_max,
      List<String> amenities});
}

/// @nodoc
class __$$FilterEntityImplCopyWithImpl<$Res>
    extends _$FilterEntityCopyWithImpl<$Res, _$FilterEntityImpl>
    implements _$$FilterEntityImplCopyWith<$Res> {
  __$$FilterEntityImplCopyWithImpl(
      _$FilterEntityImpl _value, $Res Function(_$FilterEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station_count = freezed,
    Object? charge_type = null,
    Object? output_min = null,
    Object? output_max = null,
    Object? amenities = null,
  }) {
    return _then(_$FilterEntityImpl(
      station_count: freezed == station_count
          ? _value.station_count
          : station_count // ignore: cast_nullable_to_non_nullable
              as int?,
      charge_type: null == charge_type
          ? _value._charge_type
          : charge_type // ignore: cast_nullable_to_non_nullable
              as List<String>,
      output_min: null == output_min
          ? _value.output_min
          : output_min // ignore: cast_nullable_to_non_nullable
              as int,
      output_max: null == output_max
          ? _value.output_max
          : output_max // ignore: cast_nullable_to_non_nullable
              as int,
      amenities: null == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FilterEntityImpl implements _FilterEntity {
  const _$FilterEntityImpl(
      {required this.station_count,
      required final List<String> charge_type,
      required this.output_min,
      required this.output_max,
      required final List<String> amenities})
      : _charge_type = charge_type,
        _amenities = amenities;

  @override
  final int? station_count;
  final List<String> _charge_type;
  @override
  List<String> get charge_type {
    if (_charge_type is EqualUnmodifiableListView) return _charge_type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_charge_type);
  }

  @override
  final int output_min;
  @override
  final int output_max;
  final List<String> _amenities;
  @override
  List<String> get amenities {
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amenities);
  }

  @override
  String toString() {
    return 'FilterEntity(station_count: $station_count, charge_type: $charge_type, output_min: $output_min, output_max: $output_max, amenities: $amenities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterEntityImpl &&
            (identical(other.station_count, station_count) ||
                other.station_count == station_count) &&
            const DeepCollectionEquality()
                .equals(other._charge_type, _charge_type) &&
            (identical(other.output_min, output_min) ||
                other.output_min == output_min) &&
            (identical(other.output_max, output_max) ||
                other.output_max == output_max) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      station_count,
      const DeepCollectionEquality().hash(_charge_type),
      output_min,
      output_max,
      const DeepCollectionEquality().hash(_amenities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterEntityImplCopyWith<_$FilterEntityImpl> get copyWith =>
      __$$FilterEntityImplCopyWithImpl<_$FilterEntityImpl>(this, _$identity);
}

abstract class _FilterEntity implements FilterEntity {
  const factory _FilterEntity(
      {required final int? station_count,
      required final List<String> charge_type,
      required final int output_min,
      required final int output_max,
      required final List<String> amenities}) = _$FilterEntityImpl;

  @override
  int? get station_count;
  @override
  List<String> get charge_type;
  @override
  int get output_min;
  @override
  int get output_max;
  @override
  List<String> get amenities;
  @override
  @JsonKey(ignore: true)
  _$$FilterEntityImplCopyWith<_$FilterEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
