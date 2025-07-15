import 'package:freezed_annotation/freezed_annotation.dart';

part 'power_plug_type_data_model.freezed.dart';
part 'power_plug_type_data_model.g.dart';

@freezed
class PowerPlugTypeDataModel with _$PowerPlugTypeDataModel {
  const factory PowerPlugTypeDataModel({
    @JsonKey(name: 'supplier_name') String? supplierName,
    @JsonKey(name: 'power_model') required String powerModel,
    @JsonKey(name: 'plug_type') required String plugType,
    @JsonKey(name: 'fixed_plug') bool? fixedPlug,
    @JsonKey(name: 'plug_image_url') String? plugImageUrl,
    @JsonKey(name: 'power_plug_region') String? powerPlugRegion,
    @JsonKey(name: 'additional_note') String? additionalNote,
  }) = _PowerPlugTypeDataModel;

  factory PowerPlugTypeDataModel.fromJson(Map<String, dynamic> json) =>
      _$PowerPlugTypeDataModelFromJson(json);
}
