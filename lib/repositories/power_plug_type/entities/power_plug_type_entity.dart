import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import 'package:ev_charger/repositories/power_plug_type/data_models/power_plug_type_data_model.dart';

part 'power_plug_type_entity.freezed.dart';

@freezed
class PowerPlugTypeEntity with _$PowerPlugTypeEntity {
  const factory PowerPlugTypeEntity({
    String? supplierName,
    required String powerModel,
    required String plugType,
    bool? fixedPlug,
    String? plugImageUrl,
    String? powerPlugRegion,
    String? additionalNote,
  }) = _PowerPlugTypeEntity;
}

class PowerPlugTypeMapper
    with EntityConvertible<PowerPlugTypeEntity, PowerPlugTypeDataModel> {
  @override
  PowerPlugTypeDataModel fromEntity(PowerPlugTypeEntity entityObject) {
    return PowerPlugTypeDataModel(
      supplierName: entityObject.supplierName,
      powerModel: entityObject.powerModel,
      plugType: entityObject.plugType,
      fixedPlug: entityObject.fixedPlug,
      plugImageUrl: entityObject.plugImageUrl,
      powerPlugRegion: entityObject.powerPlugRegion,
      additionalNote: entityObject.additionalNote,
    );
  }

  @override
  PowerPlugTypeEntity toEntity(PowerPlugTypeDataModel dataModelObject) {
    return PowerPlugTypeEntity(
      supplierName: dataModelObject.supplierName,
      powerModel: dataModelObject.powerModel,
      plugType: dataModelObject.plugType,
      fixedPlug: dataModelObject.fixedPlug,
      plugImageUrl: dataModelObject.plugImageUrl,
      powerPlugRegion: dataModelObject.powerPlugRegion,
      additionalNote: dataModelObject.additionalNote,
    );
  }
}
