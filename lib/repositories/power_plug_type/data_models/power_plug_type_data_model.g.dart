// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_plug_type_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PowerPlugTypeDataModelImpl _$$PowerPlugTypeDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PowerPlugTypeDataModelImpl(
      powerModel: json['power_model'] as String,
      plugType: json['plug_type'] as String,
      plugImage: json['plug_image'] as String?,
      usedInRegions: (json['used_in_regions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      additionalNotes: json['additional_notes'] as String?,
    );

Map<String, dynamic> _$$PowerPlugTypeDataModelImplToJson(
        _$PowerPlugTypeDataModelImpl instance) =>
    <String, dynamic>{
      'power_model': instance.powerModel,
      'plug_type': instance.plugType,
      'plug_image': instance.plugImage,
      'used_in_regions': instance.usedInRegions,
      'additional_notes': instance.additionalNotes,
    };
