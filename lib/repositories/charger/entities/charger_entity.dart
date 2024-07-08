import 'package:ev_charger/shared/core/mixins/entity_convertible.mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data_models/charger_data_model.dart';

part 'charger_entity.freezed.dart';

@freezed
class ChargerEntity with _$ChargerEntity {
  const factory ChargerEntity({
    required String chargerId,
    required String locationId,
    required String powerOutputId,
    required String powerPlugTypeId,
    required int numberOfPorts,
    required String availabity,
    DateTime? installationDate,
    DateTime? lastMaintainanceDate,
  }) = _ChargerEntity;
}

class ChargerMapper with EntityConvertible<ChargerEntity, Charger> {
  @override
  Charger fromEntity(ChargerEntity entityObject) {
    return Charger(
      chargerId: entityObject.chargerId,
      locationId: entityObject.locationId,
      powerOutputId: entityObject.powerOutputId,
      powerPlugTypeId: entityObject.powerPlugTypeId,
      numberOfPorts: entityObject.numberOfPorts,
      availabity: entityObject.availabity,
      installationDate: entityObject.installationDate,
      lastMaintainanceDate: entityObject.lastMaintainanceDate,
    );
  }

  @override
  ChargerEntity toEntity(Charger dataModelObject) {
    return ChargerEntity(
      chargerId: dataModelObject.chargerId,
      locationId: dataModelObject.locationId,
      powerOutputId: dataModelObject.powerOutputId,
      powerPlugTypeId: dataModelObject.powerPlugTypeId,
      numberOfPorts: dataModelObject.numberOfPorts,
      availabity: dataModelObject.availabity,
      installationDate: dataModelObject.installationDate,
      lastMaintainanceDate: dataModelObject.lastMaintainanceDate,
    );
  }
}
