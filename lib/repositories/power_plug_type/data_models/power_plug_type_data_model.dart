import 'package:freezed_annotation/freezed_annotation.dart';

part 'power_plug_type_data_model.freezed.dart';
part 'power_plug_type_data_model.g.dart';

@freezed
class PowerPlugTypeDataModel with _$PowerPlugTypeDataModel {
  const factory PowerPlugTypeDataModel({
    @JsonKey(name: 'power_model') required String powerModel,
    @JsonKey(name: 'plug_type') required String plugType,
    @JsonKey(name: 'plug_image') String? plugImage,
    @JsonKey(name: 'used_in_regions') List<String>? usedInRegions,
    @JsonKey(name: 'additional_notes') String? additionalNotes,
  }) = _PowerPlugTypeDataModel;

  factory PowerPlugTypeDataModel.fromJson(Map<String, dynamic> json) =>
      _$PowerPlugTypeDataModelFromJson(json);
}
