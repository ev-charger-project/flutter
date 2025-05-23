// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'power_plug_type_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PowerPlugTypeDataModel _$PowerPlugTypeDataModelFromJson(
    Map<String, dynamic> json) {
  return _PowerPlugTypeDataModel.fromJson(json);
}

/// @nodoc
mixin _$PowerPlugTypeDataModel {
  @JsonKey(name: 'power_model')
  String get powerModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'plug_type')
  String get plugType => throw _privateConstructorUsedError;
  @JsonKey(name: 'plug_image_url')
  String? get plugImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'used_in_regions')
  List<String>? get usedInRegions => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_notes')
  String? get additionalNotes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PowerPlugTypeDataModelCopyWith<PowerPlugTypeDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PowerPlugTypeDataModelCopyWith<$Res> {
  factory $PowerPlugTypeDataModelCopyWith(PowerPlugTypeDataModel value,
          $Res Function(PowerPlugTypeDataModel) then) =
      _$PowerPlugTypeDataModelCopyWithImpl<$Res, PowerPlugTypeDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'power_model') String powerModel,
      @JsonKey(name: 'plug_type') String plugType,
      @JsonKey(name: 'plug_image_url') String? plugImage,
      @JsonKey(name: 'used_in_regions') List<String>? usedInRegions,
      @JsonKey(name: 'additional_notes') String? additionalNotes});
}

/// @nodoc
class _$PowerPlugTypeDataModelCopyWithImpl<$Res,
        $Val extends PowerPlugTypeDataModel>
    implements $PowerPlugTypeDataModelCopyWith<$Res> {
  _$PowerPlugTypeDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? powerModel = null,
    Object? plugType = null,
    Object? plugImage = freezed,
    Object? usedInRegions = freezed,
    Object? additionalNotes = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$PowerPlugTypeDataModelImplCopyWith<$Res>
    implements $PowerPlugTypeDataModelCopyWith<$Res> {
  factory _$$PowerPlugTypeDataModelImplCopyWith(
          _$PowerPlugTypeDataModelImpl value,
          $Res Function(_$PowerPlugTypeDataModelImpl) then) =
      __$$PowerPlugTypeDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'power_model') String powerModel,
      @JsonKey(name: 'plug_type') String plugType,
      @JsonKey(name: 'plug_image_url') String? plugImage,
      @JsonKey(name: 'used_in_regions') List<String>? usedInRegions,
      @JsonKey(name: 'additional_notes') String? additionalNotes});
}

/// @nodoc
class __$$PowerPlugTypeDataModelImplCopyWithImpl<$Res>
    extends _$PowerPlugTypeDataModelCopyWithImpl<$Res,
        _$PowerPlugTypeDataModelImpl>
    implements _$$PowerPlugTypeDataModelImplCopyWith<$Res> {
  __$$PowerPlugTypeDataModelImplCopyWithImpl(
      _$PowerPlugTypeDataModelImpl _value,
      $Res Function(_$PowerPlugTypeDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? powerModel = null,
    Object? plugType = null,
    Object? plugImage = freezed,
    Object? usedInRegions = freezed,
    Object? additionalNotes = freezed,
  }) {
    return _then(_$PowerPlugTypeDataModelImpl(
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
@JsonSerializable()
class _$PowerPlugTypeDataModelImpl implements _PowerPlugTypeDataModel {
  const _$PowerPlugTypeDataModelImpl(
      {@JsonKey(name: 'power_model') required this.powerModel,
      @JsonKey(name: 'plug_type') required this.plugType,
      @JsonKey(name: 'plug_image_url') this.plugImage,
      @JsonKey(name: 'used_in_regions') final List<String>? usedInRegions,
      @JsonKey(name: 'additional_notes') this.additionalNotes})
      : _usedInRegions = usedInRegions;

  factory _$PowerPlugTypeDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PowerPlugTypeDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'power_model')
  final String powerModel;
  @override
  @JsonKey(name: 'plug_type')
  final String plugType;
  @override
  @JsonKey(name: 'plug_image_url')
  final String? plugImage;
  final List<String>? _usedInRegions;
  @override
  @JsonKey(name: 'used_in_regions')
  List<String>? get usedInRegions {
    final value = _usedInRegions;
    if (value == null) return null;
    if (_usedInRegions is EqualUnmodifiableListView) return _usedInRegions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'additional_notes')
  final String? additionalNotes;

  @override
  String toString() {
    return 'PowerPlugTypeDataModel(powerModel: $powerModel, plugType: $plugType, plugImage: $plugImage, usedInRegions: $usedInRegions, additionalNotes: $additionalNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PowerPlugTypeDataModelImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, powerModel, plugType, plugImage,
      const DeepCollectionEquality().hash(_usedInRegions), additionalNotes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PowerPlugTypeDataModelImplCopyWith<_$PowerPlugTypeDataModelImpl>
      get copyWith => __$$PowerPlugTypeDataModelImplCopyWithImpl<
          _$PowerPlugTypeDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PowerPlugTypeDataModelImplToJson(
      this,
    );
  }
}

abstract class _PowerPlugTypeDataModel implements PowerPlugTypeDataModel {
  const factory _PowerPlugTypeDataModel(
          {@JsonKey(name: 'power_model') required final String powerModel,
          @JsonKey(name: 'plug_type') required final String plugType,
          @JsonKey(name: 'plug_image_url') final String? plugImage,
          @JsonKey(name: 'used_in_regions') final List<String>? usedInRegions,
          @JsonKey(name: 'additional_notes') final String? additionalNotes}) =
      _$PowerPlugTypeDataModelImpl;

  factory _PowerPlugTypeDataModel.fromJson(Map<String, dynamic> json) =
      _$PowerPlugTypeDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'power_model')
  String get powerModel;
  @override
  @JsonKey(name: 'plug_type')
  String get plugType;
  @override
  @JsonKey(name: 'plug_image_url')
  String? get plugImage;
  @override
  @JsonKey(name: 'used_in_regions')
  List<String>? get usedInRegions;
  @override
  @JsonKey(name: 'additional_notes')
  String? get additionalNotes;
  @override
  @JsonKey(ignore: true)
  _$$PowerPlugTypeDataModelImplCopyWith<_$PowerPlugTypeDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
