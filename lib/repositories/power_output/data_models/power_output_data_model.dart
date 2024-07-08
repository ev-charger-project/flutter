import 'package:freezed_annotation/freezed_annotation.dart';

part 'power_output_data_model.freezed.dart';
part 'power_output_data_model.g.dart';

@freezed
class PowerOutputDataModel with _$PowerOutputDataModel {
  const factory PowerOutputDataModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'output_value') required int outputValue,
    @JsonKey(name: 'charging_speed') required String chargingSpeed,
    @JsonKey(name: 'voltage') required int voltage,
    @JsonKey(name: 'description') String? description,
  }) = _PowerOutputDataModel;

  factory PowerOutputDataModel.fromJson(Map<String, dynamic> json) => _$PowerOutputDataModelFromJson(json);
}