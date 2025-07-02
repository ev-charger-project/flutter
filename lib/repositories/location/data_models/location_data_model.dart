import 'package:ev_charger/repositories/location_amenity/data_models/location_amenity_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../charger/data_models/charger_data_model.dart';

part 'location_data_model.freezed.dart';
part 'location_data_model.g.dart';

@freezed
class LocationDataModel with _$LocationDataModel {
  const factory LocationDataModel({
    @Default('blank') @JsonKey(name: 'id') String id,
    @JsonKey(name: 'location_name') required String name,
    @JsonKey(name: 'house_number') String? houseNumber,
    @JsonKey(name: 'street') String? street,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'county') String? county,
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'latitude') required double latitude,
    @JsonKey(name: 'longitude') required double longitude,
    @JsonKey(name: 'postal_code') String? postal,
    @JsonKey(name: 'description') String? description,
    @Default([]) @JsonKey(name: 'working_days') List<WorkingDay>? workingDays,
    @JsonKey(name: 'pricing') String? pricing,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'parking_level') String? parkingLevel,
    @JsonKey(name: 'website_url') String? websiteUrl,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'total_charging_ports') int? totalChargingPorts,
    @JsonKey(name: 'access') String? access,
    @JsonKey(name: 'payment_methods') String? paymentMethods,
    @Default([])
    @JsonKey(name: 'ev_chargers')
    List<ChargerDataModel>? ev_chargers,
    @Default([])
    @JsonKey(name: 'location_amenities')
    List<LocationAmenityDataModel>? locationAmenities,
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
