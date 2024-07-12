import 'package:ev_charger/repositories/marker/data_models/charger_marker_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/core/mixins/entity_convertible.mixin.dart';

part 'charger_marker_entity.freezed.dart';

@freezed
class ChargerMarkerEntity with _$ChargerMarkerEntity {
  const factory ChargerMarkerEntity({
    required String id,
    required String latitude,
    required String longitude,
  }) = _ChargerMarkerEntity;
}
class MarkerMapper with EntityConvertible<ChargerMarkerEntity, ChargerMarkerDataModel> {
  @override
  ChargerMarkerDataModel fromEntity(ChargerMarkerEntity entityObject) {
    return ChargerMarkerDataModel(
      id: entityObject.id,
      latitude: entityObject.latitude,
      longitude: entityObject.longitude,

    );
  }

  @override
  ChargerMarkerEntity toEntity(ChargerMarkerDataModel dataModelObject) {
    return ChargerMarkerEntity(
      id: dataModelObject.id,
      latitude: dataModelObject.latitude,
      longitude: dataModelObject.longitude,

    );
  }
  List<ChargerMarkerEntity> toEntityList(List<ChargerMarkerDataModel> dataModels) {
    return dataModels.map((dataModel) => toEntity(dataModel)).toList();
  }

}