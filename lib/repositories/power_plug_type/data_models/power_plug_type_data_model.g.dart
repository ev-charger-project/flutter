// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_plug_type_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PowerPlugTypeDataModelImpl _$$PowerPlugTypeDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PowerPlugTypeDataModelImpl(
      supplierName: json['supplier_name'] as String?,
      powerModel: json['power_model'] as String,
      plugType: json['plug_type'] as String,
      fixedPlug: json['fixed_plug'] as bool?,
      plugImageUrl: json['plug_image_url'] as String?,
      powerPlugRegion: json['power_plug_region'] as String?,
      additionalNote: json['additional_note'] as String?,
    );

Map<String, dynamic> _$$PowerPlugTypeDataModelImplToJson(
        _$PowerPlugTypeDataModelImpl instance) =>
    <String, dynamic>{
      'supplier_name': instance.supplierName,
      'power_model': instance.powerModel,
      'plug_type': instance.plugType,
      'fixed_plug': instance.fixedPlug,
      'plug_image_url': instance.plugImageUrl,
      'power_plug_region': instance.powerPlugRegion,
      'additional_note': instance.additionalNote,
    };
