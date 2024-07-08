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
  String get id => throw _privateConstructorUsedError;
  String get powerModel => throw _privateConstructorUsedError;
  String get plugType => throw _privateConstructorUsedError;
  String? get plugImage => throw _privateConstructorUsedError;
  List<String>? get usedInRegions => throw _privateConstructorUsedError;
  String? get additionalNotes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
      {String id,
      String powerModel,
      String plugType,
      String? plugImage,
      List<String>? usedInRegions,
      String? additionalNotes});
}

/// @nodoc
class _$PowerPlugTypeEntityCopyWithImpl<$Res, $Val extends PowerPlugTypeEntity>
    implements $PowerPlugTypeEntityCopyWith<$Res> {
  _$PowerPlugTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? powerModel = null,
    Object? plugType = null,
    Object? plugImage = freezed,
    Object? usedInRegions = freezed,
    Object? additionalNotes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      powerModel: null == powerModel
          ? _value.powerModel
          : powerModel // ignore: cast_nullable_to_non_nullable
              as String,
      plugType: null == plugType
          ? _value.plugType
          : plugType // ignore: cast_nullable_to_non_nullable
              as String,
      plugImage: freezed == plugImage
          ? _value.plugImage
          : plugImage // ignore: cast_nullable_to_non_nullable
              as String?,
      usedInRegions: freezed == usedInRegions
          ? _value.usedInRegions
          : usedInRegions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      additionalNotes: freezed == additionalNotes
          ? _value.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
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
      {String id,
      String powerModel,
      String plugType,
      String? plugImage,
      List<String>? usedInRegions,
      String? additionalNotes});
}

/// @nodoc
class __$$PowerPlugTypeEntityImplCopyWithImpl<$Res>
    extends _$PowerPlugTypeEntityCopyWithImpl<$Res, _$PowerPlugTypeEntityImpl>
    implements _$$PowerPlugTypeEntityImplCopyWith<$Res> {
  __$$PowerPlugTypeEntityImplCopyWithImpl(_$PowerPlugTypeEntityImpl _value,
      $Res Function(_$PowerPlugTypeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? powerModel = null,
    Object? plugType = null,
    Object? plugImage = freezed,
    Object? usedInRegions = freezed,
    Object? additionalNotes = freezed,
  }) {
    return _then(_$PowerPlugTypeEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      powerModel: null == powerModel
          ? _value.powerModel
          : powerModel // ignore: cast_nullable_to_non_nullable
              as String,
      plugType: null == plugType
          ? _value.plugType
          : plugType // ignore: cast_nullable_to_non_nullable
              as String,
      plugImage: freezed == plugImage
          ? _value.plugImage
          : plugImage // ignore: cast_nullable_to_non_nullable
              as String?,
      usedInRegions: freezed == usedInRegions
          ? _value._usedInRegions
          : usedInRegions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      additionalNotes: freezed == additionalNotes
          ? _value.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PowerPlugTypeEntityImpl implements _PowerPlugTypeEntity {
  const _$PowerPlugTypeEntityImpl(
      {required this.id,
      required this.powerModel,
      required this.plugType,
      this.plugImage,
      final List<String>? usedInRegions,
      this.additionalNotes})
      : _usedInRegions = usedInRegions;

  @override
  final String id;
  @override
  final String powerModel;
  @override
  final String plugType;
  @override
  final String? plugImage;
  final List<String>? _usedInRegions;
  @override
  List<String>? get usedInRegions {
    final value = _usedInRegions;
    if (value == null) return null;
    if (_usedInRegions is EqualUnmodifiableListView) return _usedInRegions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? additionalNotes;

  @override
  String toString() {
    return 'PowerPlugTypeEntity(id: $id, powerModel: $powerModel, plugType: $plugType, plugImage: $plugImage, usedInRegions: $usedInRegions, additionalNotes: $additionalNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PowerPlugTypeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.powerModel, powerModel) ||
                other.powerModel == powerModel) &&
            (identical(other.plugType, plugType) ||
                other.plugType == plugType) &&
            (identical(other.plugImage, plugImage) ||
                other.plugImage == plugImage) &&
            const DeepCollectionEquality()
                .equals(other._usedInRegions, _usedInRegions) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      powerModel,
      plugType,
      plugImage,
      const DeepCollectionEquality().hash(_usedInRegions),
      additionalNotes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PowerPlugTypeEntityImplCopyWith<_$PowerPlugTypeEntityImpl> get copyWith =>
      __$$PowerPlugTypeEntityImplCopyWithImpl<_$PowerPlugTypeEntityImpl>(
          this, _$identity);
}

abstract class _PowerPlugTypeEntity implements PowerPlugTypeEntity {
  const factory _PowerPlugTypeEntity(
      {required final String id,
      required final String powerModel,
      required final String plugType,
      final String? plugImage,
      final List<String>? usedInRegions,
      final String? additionalNotes}) = _$PowerPlugTypeEntityImpl;

  @override
  String get id;
  @override
  String get powerModel;
  @override
  String get plugType;
  @override
  String? get plugImage;
  @override
  List<String>? get usedInRegions;
  @override
  String? get additionalNotes;
  @override
  @JsonKey(ignore: true)
  _$$PowerPlugTypeEntityImplCopyWith<_$PowerPlugTypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
