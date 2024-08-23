import 'package:freezed_annotation/freezed_annotation.dart';
import '../../charger/data_models/charger_data_model.dart';

part 'location_data_model.freezed.dart';
part 'location_data_model.g.dart';

@freezed
class LocationDataModel with _$LocationDataModel {
  const factory LocationDataModel({
    @Default('blank') @JsonKey(name: 'id') String id,
    @JsonKey(name: 'location_name') required String name,
    @JsonKey(name: 'street') required String street,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'postal_code') String? postal,
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'latitude') required double latitude,
    @JsonKey(name: 'longitude') required double longitude,
    @JsonKey(name: 'description') String? description,
    @Default([]) @JsonKey(name: 'working_days') List<WorkingDay>? workingDays,
    @JsonKey(name: 'pricing') String? pricing,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'parking_level') String? parkingLevel,
    @Default([]) @JsonKey(name: 'ev_chargers') List<ChargerDataModel>? ev_chargers,
  }) = _LocationDataModel;

  factory LocationDataModel.fromJson(Map<String, dynamic> json) =>
      _$LocationDataModelFromJson(json);
}

@freezed
class WorkingDay with _$WorkingDay {
  const factory WorkingDay({
    @JsonKey(name: 'day') required int day,
    @JsonKey(name: 'open_time') required String openTime,
    @JsonKey(name: 'close_time') required String closeTime,
  }) = _WorkingDay;

  factory WorkingDay.fromJson(Map<String, dynamic> json) =>
      _$WorkingDayFromJson(json);
}