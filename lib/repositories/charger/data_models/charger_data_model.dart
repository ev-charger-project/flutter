import 'package:freezed_annotation/freezed_annotation.dart';

part 'charger_data_model.freezed.dart';
part 'charger_data_model.g.dart';

@freezed
class Charger with _$Charger {
  const factory Charger({
    @JsonKey(name: 'charger_id') required String chargerId,
    @JsonKey(name: 'location_id') required String locationId,
    @JsonKey(name: 'power_output_id') required String powerOutputId,
    @JsonKey(name: 'power_plug_type_id') required String powerPlugTypeId,
    @JsonKey(name: 'number_of_ports') required int numberOfPorts,
    @JsonKey(name: 'availabity') required String availabity,
    @JsonKey(name: 'installation_date') DateTime? installationDate,
    @JsonKey(name: 'last_maintainance_date') DateTime? lastMaintainanceDate,
}) = _Charger;

    factory Charger.fromJson(Map<String, dynamic> json) =>
        _$ChargerFromJson(json);
}