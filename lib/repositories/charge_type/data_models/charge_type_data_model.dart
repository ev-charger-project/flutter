
import 'package:freezed_annotation/freezed_annotation.dart';

part 'charge_type_data_model.freezed.dart';
part 'charge_type_data_model.g.dart';

@freezed
class ChargeTypeDataModel with _$ChargeTypeDataModel {
  const factory ChargeTypeDataModel({
    @JsonKey(name: 'plug_type') required String plug_type,
    @JsonKey(name: 'power_model') required String power_model,
    @JsonKey(name: 'plug_image_url') required String plug_image_url,
  }) = _ChargeType;

  factory ChargeTypeDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChargeTypeDataModelFromJson(json);
}
