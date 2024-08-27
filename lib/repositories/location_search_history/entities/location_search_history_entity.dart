import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../../location/data_models/location_data_model.dart';
import '../data_models/location_search_history_data_model.dart';

part 'location_search_history_entity.freezed.dart';

@freezed
class LocationSearchHistoryEntity with _$LocationSearchHistoryEntity {
  const factory LocationSearchHistoryEntity({
    String? id,
    required String updatedAt,
    required LocationDataModel location,
  }) = _LocationSearchHistoryEntity;
}

class LocationSearchHistoryMapper
    with
        EntityConvertible<LocationSearchHistoryEntity,
            LocationSearchHistoryDataModel> {
  List<LocationSearchHistoryEntity> fromModelList(
      List<LocationSearchHistoryDataModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }

  List<LocationSearchHistoryDataModel> toModelList(
      List<LocationSearchHistoryEntity> entities) {
    return entities.map((entity) => fromEntity(entity)).toList();
  }

  @override
  LocationSearchHistoryDataModel fromEntity(
      LocationSearchHistoryEntity entityObject) {
    return LocationSearchHistoryDataModel(
      id: entityObject.id ?? 'blank',
      updatedAt: entityObject.updatedAt,
      location: entityObject.location,
    );
  }

  @override
  LocationSearchHistoryEntity toEntity(
      LocationSearchHistoryDataModel dataModelObject) {
    return LocationSearchHistoryEntity(
        id: dataModelObject.id,
        updatedAt: dataModelObject.updatedAt,
        location: dataModelObject.location);
  }
}
