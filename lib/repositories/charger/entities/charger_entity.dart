import 'package:ev_charger/repositories/power_output/entities/power_output_entity.dart';
import 'package:ev_charger/repositories/power_plug_type/entities/power_plug_type_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'charger_entity.freezed.dart';

@freezed
class ChargerEntity with _$ChargerEntity {
  const factory ChargerEntity({
    String? station_name,
    required String availability,
    required List<Port> ports,
  }) = _ChargerEntity;
}

@freezed
class Port with _$Port {
  const factory Port({
    required PowerPlugTypeEntity power_plug_type,
    required PowerOutputEntity power_model,
  }) = _PortDataModel;
}
