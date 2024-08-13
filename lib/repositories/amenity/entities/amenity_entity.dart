import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../data_models/amenity_data_model.dart';

part 'amenity_entity.freezed.dart';

@freezed
class AmenityEntity with _$AmenityEntity {
  const factory AmenityEntity({
    required String amenity,
    required String amenity_image_url,
  }) = _AmenityEntity;
}

class AmenityMapper with EntityConvertible<AmenityEntity, AmenityDataModel> {
  @override
  AmenityDataModel fromEntity(AmenityEntity entityObject) {
    return AmenityDataModel(
      amenity: entityObject.amenity,
      amenity_image_url: entityObject.amenity_image_url,
    );
  }

  @override
  AmenityEntity toEntity(AmenityDataModel dataModelObject) {
    return AmenityEntity(
      amenity: dataModelObject.amenity,
      amenity_image_url: dataModelObject.amenity_image_url,
    );
  }

  List<AmenityEntity> toEntityList(List<AmenityDataModel> dataModels) {
    return dataModels.map((dataModel) => toEntity(dataModel)).toList();
  }
}
