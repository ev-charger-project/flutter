import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../data_models/charge_type_data_model.dart';
part 'charge_type_entity.freezed.dart';

@freezed
class ChargeTypeEntity with _$ChargeTypeEntity {
  const factory ChargeTypeEntity({
    required String plug_type,
    required String power_model,
    required String plug_image_url,
  }) = _ChargeTypeEntity;
}

class ChargeTypeMapper
    with EntityConvertible<ChargeTypeEntity, ChargeTypeDataModel> {
  @override
  ChargeTypeDataModel fromEntity(ChargeTypeEntity entityObject) {
    return ChargeTypeDataModel(
      plug_type: entityObject.plug_type,
      power_model: entityObject.power_model,
      plug_image_url: entityObject.plug_image_url,
    );
  }

  @override
  ChargeTypeEntity toEntity(ChargeTypeDataModel dataModelObject) {
    return ChargeTypeEntity(
      plug_type: dataModelObject.plug_type,
      power_model: dataModelObject.power_model,
      plug_image_url: dataModelObject.plug_image_url,
    );
  }

  List<ChargeTypeEntity> toEntityList(List<ChargeTypeDataModel> dataModels) {
    return dataModels.map((dataModel) => toEntity(dataModel)).toList();
  }
}
