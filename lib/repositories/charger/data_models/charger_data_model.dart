import 'package:ev_charger/repositories/power_output/data_models/power_output_data_model.dart';
import 'package:ev_charger/repositories/power_plug_type/data_models/power_plug_type_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'charger_data_model.freezed.dart';
part 'charger_data_model.g.dart';

@freezed
class ChargerDataModel with _$ChargerDataModel {
  const factory ChargerDataModel({
    @JsonKey(name: 'station_name') required String station_name,
    @JsonKey(name: 'availability') required String availability,
    @JsonKey(name: 'ev_charger_ports') required List<PortDataModel> ports,
  }) = _Charger;

  factory ChargerDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChargerDataModelFromJson(json);
}


@freezed
class PortDataModel with _$PortDataModel {
  const factory PortDataModel({
    @JsonKey(name: 'power_plug_type') required PowerPlugTypeDataModel power_plug_type,
    @JsonKey(name: 'power_model') required PowerOutputDataModel power_model,
  }) = _PortDataModel;

  factory PortDataModel.fromJson(Map<String, String> json) =>
      _$PortDataModelFromJson(json);
}