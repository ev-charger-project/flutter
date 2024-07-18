import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestion_data_model.freezed.dart';

part 'suggestion_data_model.g.dart';

@freezed
class SuggestionDataModel with _$SuggestionDataModel {
  const factory SuggestionDataModel({
    @JsonKey(name: 'id') required String locationId,
    @JsonKey(name: 'location_name') required String locationName,
    @JsonKey(name: 'street') required String street,
    @JsonKey(name: 'district') required String district,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'postal_code') String? postalCode,
    @JsonKey(name: 'description') String? description,
  }) = _Suggestion;

  factory SuggestionDataModel.fromJson(Map<String, dynamic> json) =>
      _$SuggestionDataModelFromJson(json);
}
