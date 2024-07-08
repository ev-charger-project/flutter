import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_data_model.freezed.dart';
part 'location_data_model.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'location_name') required String name,
    @JsonKey(name: 'street') required String streetAddress,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'city') required String cityProvince,
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'postal_code') String? postalCode,
    @JsonKey(name: 'latitude') required double latitude,
    @JsonKey(name: 'longitude') required double longitude,
    @JsonKey(name: 'operating_hours') required List<OperatingHour> operatingHours,
    @JsonKey(name: 'pricing') String? pricing,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'parking_level') String? parkingLevel,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}

@freezed
class OperatingHour with _$OperatingHour {
  const factory OperatingHour({
    required String day,
    required String open,
    required String close,
  }) = _OperatingHour;

  factory OperatingHour.fromJson(Map<String, dynamic> json) => _$OperatingHourFromJson(json);
}
