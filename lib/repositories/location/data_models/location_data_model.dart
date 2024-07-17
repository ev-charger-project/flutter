import 'package:freezed_annotation/freezed_annotation.dart';
import '../../charger/data_models/charger_data_model.dart';
part 'location_data_model.freezed.dart';
part 'location_data_model.g.dart';

@freezed
class LocationDataModel with _$LocationDataModel {
  const factory LocationDataModel({
    @JsonKey(name: 'location_name') required String name,
    @JsonKey(name: 'street') required String street,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'postal_code') String? postal,
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'latitude') required double latitude,
    @JsonKey(name: 'longitude') required double longitude,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'working_day') required WorkingDay workingDay,
    @JsonKey(name: 'pricing') String? pricing,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'parking_level') String? parkingLevel,
    @JsonKey(name: 'ev_chargers') required List<ChargerDataModel> ev_chargers,
  }) = _LocationDataModel;

  factory LocationDataModel.fromJson(Map<String, dynamic> json) =>
      _$LocationDataModelFromJson(json);
}

@freezed
class WorkingDay with _$WorkingDay {
  const factory WorkingDay({
    @JsonKey(name: 'mon') required String mon,
    @JsonKey(name: 'tue') required String tue,
    @JsonKey(name: 'wed') required String wed,
    @JsonKey(name: 'thu') required String thu,
    @JsonKey(name: 'fri') required String fri,
    @JsonKey(name: 'sat') required String sat,
    @JsonKey(name: 'sun') required String sun,
  }) = _WorkingDay;

  factory WorkingDay.fromJson(Map<String, String> json) =>
      _$WorkingDayFromJson(json);
}
