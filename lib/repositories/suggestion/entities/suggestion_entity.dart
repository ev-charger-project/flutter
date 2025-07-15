import 'package:ev_charger/repositories/suggestion/data_models/suggestion_data_model.dart';
import 'package:ev_charger/shared/core/mixins/entity_convertible.mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestion_entity.freezed.dart';

@freezed
class SuggestionEntity with _$SuggestionEntity {
  const factory SuggestionEntity({
    required String locationId,
    required String locationName,
    String? street,
    String? district,
    String? houseNumber,
    String? state,
    String? county,
    required double latitude,
    required double longitude,
    required String city,
    required String country,
    String? postalCode,
    String? description,
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
      houseNumber: entityObject.houseNumber,
      state: entityObject.state,
      county: entityObject.county,
      city: entityObject.city,
      latitude: entityObject.latitude,
      longitude: entityObject.longitude,
      country: entityObject.country,
      postalCode: entityObject.postalCode,
      description: entityObject.description,
    );
  }

  @override
  SuggestionEntity toEntity(SuggestionDataModel dataModelObject) {
    return SuggestionEntity(
      locationId: dataModelObject.locationId,
      locationName: dataModelObject.locationName,
      street: dataModelObject.street,
      district: dataModelObject.district,
      houseNumber: dataModelObject.houseNumber,
      state: dataModelObject.state,
      county: dataModelObject.county,
      city: dataModelObject.city,
      latitude: dataModelObject.latitude,
      longitude: dataModelObject.longitude,
      country: dataModelObject.country,
      postalCode: dataModelObject.postalCode,
      description: dataModelObject.description,
    );
  }

  List<SuggestionEntity> toEntityList(List<SuggestionDataModel> dataModels) {
    return dataModels.map((dataModel) => toEntity(dataModel)).toList();
  }
}
