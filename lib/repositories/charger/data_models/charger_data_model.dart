import 'package:freezed_annotation/freezed_annotation.dart';

part 'charger_data_model.freezed.dart';
part 'charger_data_model.g.dart';

@freezed
class Charger with _$Charger {
  const factory Charger({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'location_id') required String locationId,
    @JsonKey(name: 'power_output_id') required String powerOutputId,
    @JsonKey(name: 'power_plug_type_id') required String powerPlugTypeId,
    @JsonKey(name: 'number_of_port') required int numberOfPort,
    @JsonKey(name: 'availabity') required String availabity,
  }) = _Charger;

  factory Charger.fromJson(Map<String, dynamic> json) =>
      _$ChargerFromJson(json);
}
