import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../data_models/power_output_data_model.dart';


part 'power_output_entity.freezed.dart';

@freezed
class PowerOutputEntity with _$PowerOutputEntity {
  const factory PowerOutputEntity({
    required String id,
    required int outputValue,
    required String chargingSpeed,
    required int voltage,
    String? description,
  }) = _PowerOutputEntity;

}

class PowerOutputMapper with EntityConvertible<PowerOutputEntity, PowerOutputDataModel> {

  @override
  PowerOutputDataModel fromEntity(PowerOutputEntity entityObject) {
    return PowerPlugTypeDataModel(
      id: entityObject.id,
      outputValue: entityObject.outputValue,
      chargingSpeed: entityObject.chargingSpeed,
      voltage: entityObject.voltage,
      description: entityObject.description,
    );
  }

  @override
  PowerOutputEntity toEntity(PowerOutputDataModel dataModelObject) {
    return PowerOutputEntity(
      id: dataModelObject.id,
      outputValue: dataModelObject.outputValue,
      chargingSpeed: dataModelObject.chargingSpeed,
      voltage: dataModelObject.voltage,
      description: dataModelObject.description,
    );
  }
}
