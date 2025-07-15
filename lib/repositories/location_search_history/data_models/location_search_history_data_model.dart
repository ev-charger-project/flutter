import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_search_history_data_model.freezed.dart';
part 'location_search_history_data_model.g.dart';

@freezed
class LocationSearchHistoryDataModel with _$LocationSearchHistoryDataModel {
  const factory LocationSearchHistoryDataModel({
    @Default('blank') @JsonKey(name: 'id') String id,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'location') required LocationDataModel location,
  }) = _LocationSearchHistoryDataModel;

  factory LocationSearchHistoryDataModel.fromJson(Map<String, dynamic> json) =>
      _$LocationSearchHistoryDataModelFromJson(json);
}

@freezed
class LocationSummaryDataModel with _$LocationSummaryDataModel {
  const factory LocationSummaryDataModel({
    @JsonKey(name: 'location_name') required String locationName,
    @JsonKey(name: 'street') required String street,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'postal_code') String? postal,
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'latitude') required double latitude,
    @JsonKey(name: 'longitude') required double longitude,
  }) = _LocationSummaryDataModel;

  factory LocationSummaryDataModel.fromJson(Map<String, dynamic> json) =>
      _$LocationSummaryDataModelFromJson(json);
}
