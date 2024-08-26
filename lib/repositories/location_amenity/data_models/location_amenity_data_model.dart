import 'package:ev_charger/repositories/amenity/data_models/amenity_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_amenity_data_model.freezed.dart';
part 'location_amenity_data_model.g.dart';

@freezed
class LocationAmenityDataModel with _$LocationAmenityDataModel {
  const factory LocationAmenityDataModel({
    @JsonKey(name: 'amenities') required AmenityDataModel amenities,
  }) = _LocationAmenityDataModel;

  factory LocationAmenityDataModel.fromJson(Map<String, dynamic> json) =>
      _$LocationAmenityDataModelFromJson(json);
}
