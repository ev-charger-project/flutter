import 'package:ev_charger/repositories/suggestion/data_models/suggestion_data_model.dart';
import 'package:ev_charger/shared/core/mixins/entity_convertible.mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestion_entity.freezed.dart';

@freezed
class SuggestionEntity with _$SuggestionEntity {
  const factory SuggestionEntity({
    required String locationId,
    required String locationName,
    required String street,
    required String district,
    required double latitude,
    required double longitude,
    required String city,
    required String country,
    String? postalCode,
  }) = _SuggestionEntity;
}

class SuggestionMapper
    with EntityConvertible<SuggestionEntity, SuggestionDataModel> {
  @override
  SuggestionDataModel fromEntity(SuggestionEntity entityObject) {
    return SuggestionDataModel(
      locationId: entityObject.locationId,
      locationName: entityObject.locationName,
      street: entityObject.street,
      district: entityObject.district,
      city: entityObject.city,
      latitude: entityObject.latitude,
      longitude: entityObject.longitude,
      country: entityObject.country,
      postalCode: entityObject.postalCode,
    );
  }

  @override
  SuggestionEntity toEntity(SuggestionDataModel dataModelObject) {
    return SuggestionEntity(
      locationId: dataModelObject.locationId,
      locationName: dataModelObject.locationName,
      street: dataModelObject.street,
      district: dataModelObject.district,
      city: dataModelObject.city,
      latitude: dataModelObject.latitude,
      longitude: dataModelObject.longitude,
      country: dataModelObject.country,
      postalCode: dataModelObject.postalCode,
    );
  }

  List<SuggestionEntity> toEntityList(List<SuggestionDataModel> dataModels) {
    return dataModels.map((dataModel) => toEntity(dataModel)).toList();
  }
}
