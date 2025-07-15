// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'power_plug_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PowerPlugTypeEntity {
  String? get supplierName => throw _privateConstructorUsedError;
  String get powerModel => throw _privateConstructorUsedError;
  String get plugType => throw _privateConstructorUsedError;
  bool? get fixedPlug => throw _privateConstructorUsedError;
  String? get plugImageUrl => throw _privateConstructorUsedError;
  String? get powerPlugRegion => throw _privateConstructorUsedError;
  String? get additionalNote => throw _privateConstructorUsedError;

  /// Create a copy of PowerPlugTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PowerPlugTypeEntityCopyWith<PowerPlugTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PowerPlugTypeEntityCopyWith<$Res> {
  factory $PowerPlugTypeEntityCopyWith(
          PowerPlugTypeEntity value, $Res Function(PowerPlugTypeEntity) then) =
      _$PowerPlugTypeEntityCopyWithImpl<$Res, PowerPlugTypeEntity>;
  @useResult
  $Res call(
      {String? supplierName,
      String powerModel,
      String plugType,
      bool? fixedPlug,
      String? plugImageUrl,
      String? powerPlugRegion,
      String? additionalNote});
}

/// @nodoc
class _$PowerPlugTypeEntityCopyWithImpl<$Res, $Val extends PowerPlugTypeEntity>
    implements $PowerPlugTypeEntityCopyWith<$Res> {
  _$PowerPlugTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PowerPlugTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierName = freezed,
    Object? powerModel = null,
    Object? plugType = null,
    Object? fixedPlug = freezed,
    Object? plugImageUrl = freezed,
    Object? powerPlugRegion = freezed,
    Object? additionalNote = freezed,
  }) {
    return _then(_value.copyWith(
      supplierName: freezed == supplierName
          ? _value.supplierName
          : supplierName // ignore: cast_nullable_to_non_nullable
              as String?,
      powerModel: null == powerModel
          ? _value.powerModel
          : powerModel // ignore: cast_nullable_to_non_nullable
              as String,
      plugType: null == plugType
          ? _value.plugType
          : plugType // ignore: cast_nullable_to_non_nullable
              as String,
      fixedPlug: freezed == fixedPlug
          ? _value.fixedPlug
          : fixedPlug // ignore: cast_nullable_to_non_nullable
              as bool?,
      plugImageUrl: freezed == plugImageUrl
          ? _value.plugImageUrl
          : plugImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      powerPlugRegion: freezed == powerPlugRegion
          ? _value.powerPlugRegion
          : powerPlugRegion // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalNote: freezed == additionalNote
          ? _value.additionalNote
          : additionalNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PowerPlugTypeEntityImplCopyWith<$Res>
    implements $PowerPlugTypeEntityCopyWith<$Res> {
  factory _$$PowerPlugTypeEntityImplCopyWith(_$PowerPlugTypeEntityImpl value,
          $Res Function(_$PowerPlugTypeEntityImpl) then) =
      __$$PowerPlugTypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? supplierName,
      String powerModel,
      String plugType,
      bool? fixedPlug,
      String? plugImageUrl,
      String? powerPlugRegion,
      String? additionalNote});
}

/// @nodoc
class __$$PowerPlugTypeEntityImplCopyWithImpl<$Res>
    extends _$PowerPlugTypeEntityCopyWithImpl<$Res, _$PowerPlugTypeEntityImpl>
    implements _$$PowerPlugTypeEntityImplCopyWith<$Res> {
  __$$PowerPlugTypeEntityImplCopyWithImpl(_$PowerPlugTypeEntityImpl _value,
      $Res Function(_$PowerPlugTypeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PowerPlugTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierName = freezed,
    Object? powerModel = null,
    Object? plugType = null,
    Object? fixedPlug = freezed,
    Object? plugImageUrl = freezed,
    Object? powerPlugRegion = freezed,
    Object? additionalNote = freezed,
  }) {
    return _then(_$PowerPlugTypeEntityImpl(
      supplierName: freezed == supplierName
          ? _value.supplierName
          : supplierName // ignore: cast_nullable_to_non_nullable
              as String?,
      powerModel: null == powerModel
          ? _value.powerModel
          : powerModel // ignore: cast_nullable_to_non_nullable
              as String,
      plugType: null == plugType
          ? _value.plugType
          : plugType // ignore: cast_nullable_to_non_nullable
              as String,
      fixedPlug: freezed == fixedPlug
          ? _value.fixedPlug
          : fixedPlug // ignore: cast_nullable_to_non_nullable
              as bool?,
      plugImageUrl: freezed == plugImageUrl
          ? _value.plugImageUrl
          : plugImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      powerPlugRegion: freezed == powerPlugRegion
          ? _value.powerPlugRegion
          : powerPlugRegion // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalNote: freezed == additionalNote
          ? _value.additionalNote
          : additionalNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PowerPlugTypeEntityImpl implements _PowerPlugTypeEntity {
  const _$PowerPlugTypeEntityImpl(
      {this.supplierName,
      required this.powerModel,
      required this.plugType,
      this.fixedPlug,
      this.plugImageUrl,
      this.powerPlugRegion,
      this.additionalNote});

  @override
  final String? supplierName;
  @override
  final String powerModel;
  @override
  final String plugType;
  @override
  final bool? fixedPlug;
  @override
  final String? plugImageUrl;
  @override
  final String? powerPlugRegion;
  @override
  final String? additionalNote;

  @override
  String toString() {
    return 'PowerPlugTypeEntity(supplierName: $supplierName, powerModel: $powerModel, plugType: $plugType, fixedPlug: $fixedPlug, plugImageUrl: $plugImageUrl, powerPlugRegion: $powerPlugRegion, additionalNote: $additionalNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PowerPlugTypeEntityImpl &&
            (identical(other.supplierName, supplierName) ||
                other.supplierName == supplierName) &&
            (identical(other.powerModel, powerModel) ||
                other.powerModel == powerModel) &&
            (identical(other.plugType, plugType) ||
                other.plugType == plugType) &&
            (identical(other.fixedPlug, fixedPlug) ||
                other.fixedPlug == fixedPlug) &&
            (identical(other.plugImageUrl, plugImageUrl) ||
                other.plugImageUrl == plugImageUrl) &&
            (identical(other.powerPlugRegion, powerPlugRegion) ||
                other.powerPlugRegion == powerPlugRegion) &&
            (identical(other.additionalNote, additionalNote) ||
                other.additionalNote == additionalNote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, supplierName, powerModel,
      plugType, fixedPlug, plugImageUrl, powerPlugRegion, additionalNote);

  /// Create a copy of PowerPlugTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PowerPlugTypeEntityImplCopyWith<_$PowerPlugTypeEntityImpl> get copyWith =>
      __$$PowerPlugTypeEntityImplCopyWithImpl<_$PowerPlugTypeEntityImpl>(
          this, _$identity);
}

abstract class _PowerPlugTypeEntity implements PowerPlugTypeEntity {
  const factory _PowerPlugTypeEntity(
      {final String? supplierName,
      required final String powerModel,
      required final String plugType,
      final bool? fixedPlug,
      final String? plugImageUrl,
      final String? powerPlugRegion,
      final String? additionalNote}) = _$PowerPlugTypeEntityImpl;

  @override
  String? get supplierName;
  @override
  String get powerModel;
  @override
  String get plugType;
  @override
  bool? get fixedPlug;
  @override
  String? get plugImageUrl;
  @override
  String? get powerPlugRegion;
  @override
  String? get additionalNote;

  /// Create a copy of PowerPlugTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PowerPlugTypeEntityImplCopyWith<_$PowerPlugTypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
