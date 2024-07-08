import 'package:ev_charger/shared/core/mixins/entity_convertible.mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data_models/charger_data_model.dart';

part 'charger_entity.freezed.dart';

@freezed
class ChargerEntity with _$ChargerEntity {
  const factory ChargerEntity({
    required String id,
    required String locationId,
    required String powerOutputId,
    required String powerPlugTypeId,
    required int numberOfPort,
    required String availabity,

  }) = _ChargerEntity;
}

class ChargerMapper with EntityConvertible<ChargerEntity, Charger> {
  @override
  Charger fromEntity(ChargerEntity entityObject) {
    return Charger(
      id: entityObject.id,
      locationId: entityObject.locationId,
      powerOutputId: entityObject.powerOutputId,
      powerPlugTypeId: entityObject.powerPlugTypeId,
      numberOfPort: entityObject.numberOfPort,
      availabity: entityObject.availabity,

    );
  }

  @override
  ChargerEntity toEntity(Charger dataModelObject) {
    return ChargerEntity(
      id: dataModelObject.id,
      locationId: dataModelObject.locationId,
      powerOutputId: dataModelObject.powerOutputId,
      powerPlugTypeId: dataModelObject.powerPlugTypeId,
      numberOfPort: dataModelObject.numberOfPort,
      availabity: dataModelObject.availabity,

    );
  }
}
