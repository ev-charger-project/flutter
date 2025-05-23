import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import 'package:ev_charger/repositories/power_plug_type/data_models/power_plug_type_data_model.dart';

part 'power_plug_type_entity.freezed.dart';

@freezed
class PowerPlugTypeEntity with _$PowerPlugTypeEntity {
  const factory PowerPlugTypeEntity({
    required String powerModel,
    required String plugType,
    String? plugImage,
    List<String>? usedInRegions,
    String? additionalNotes,
  }) = _PowerPlugTypeEntity;
}

class PowerPlugTypeMapper
    with EntityConvertible<PowerPlugTypeEntity, PowerPlugTypeDataModel> {
  @override
  PowerPlugTypeDataModel fromEntity(PowerPlugTypeEntity entityObject) {
    return PowerPlugTypeDataModel(
      powerModel: entityObject.powerModel,
      plugType: entityObject.plugType,
      plugImage: entityObject.plugImage,
      usedInRegions: entityObject.usedInRegions,
      additionalNotes: entityObject.additionalNotes,
    );
  }

  @override
  PowerPlugTypeEntity toEntity(PowerPlugTypeDataModel dataModelObject) {
    return PowerPlugTypeEntity(
      powerModel: dataModelObject.powerModel,
      plugType: dataModelObject.plugType,
      plugImage: dataModelObject.plugImage,
      usedInRegions: dataModelObject.usedInRegions,
      additionalNotes: dataModelObject.additionalNotes,
    );
  }
}
