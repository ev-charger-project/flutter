import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../data_models/amenity_data_model.dart';

part 'amenity_entity.freezed.dart';

@freezed
class AmenityEntity with _$AmenityEntity {
  const factory AmenityEntity({
    required String amenity,
    required String imageUrl,
  }) = _AmenityEntity;
}

class AmenityMapper with EntityConvertible<AmenityEntity, AmenityDataModel> {
  @override
  AmenityDataModel fromEntity(AmenityEntity entityObject) {
    return AmenityDataModel(
      amenity: entityObject.amenity,
      imageUrl: entityObject.imageUrl,
    );
  }

  @override
  AmenityEntity toEntity(AmenityDataModel dataModelObject) {
    return AmenityEntity(
      amenity: dataModelObject.amenity,
      imageUrl: dataModelObject.imageUrl,
    );
  }

  List<AmenityEntity> toEntityList(List<AmenityDataModel> dataModels) {
    return dataModels.map((dataModel) => toEntity(dataModel)).toList();
  }
}
