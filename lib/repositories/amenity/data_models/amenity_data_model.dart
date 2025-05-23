import 'package:freezed_annotation/freezed_annotation.dart';

part 'amenity_data_model.freezed.dart';

part 'amenity_data_model.g.dart';

@freezed
class AmenityDataModel with _$AmenityDataModel {
  const factory AmenityDataModel({
    @JsonKey(name: 'amenities_types') required String amenity,
    @Default('') @JsonKey(name: 'image_url') String imageUrl,
  }) = _Amenity;

  factory AmenityDataModel.fromJson(Map<String, dynamic> json) =>
      _$AmenityDataModelFromJson(json);
}
