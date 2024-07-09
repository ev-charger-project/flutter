import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../data_models/location_data_model.dart';

part 'location_entity.freezed.dart';

@freezed
class LocationEntity with _$LocationEntity {
  const factory LocationEntity({
    required String id,
    required String name,
    required String streetAddress,
    String? district,
    required String cityProvince,
    required String country,
    String? postalCode,
    required double latitude,
    required double longitude,
    required List<OperatingHour> operatingHours,
    String? pricing,
    String? phoneNumber,
    String? parkingLevel,
  }) = _LocationEntity;
}

class LocationMapper with EntityConvertible<LocationEntity, LocationDataModel> {
  @override
  LocationDataModel fromEntity(LocationEntity entityObject) {
    return LocationDataModel(
      id: entityObject.id,
      name: entityObject.name,
      streetAddress: entityObject.streetAddress,
      district: entityObject.district,
      cityProvince: entityObject.cityProvince,
      country: entityObject.country,
      postalCode: entityObject.postalCode,
      latitude: entityObject.latitude,
      longitude: entityObject.longitude,
      operatingHours: entityObject.operatingHours
          .map((e) => OperatingHour(
                day: e.day,
                open: e.open,
                close: e.close,
              ))
          .toList(),
      pricing: entityObject.pricing,
      phoneNumber: entityObject.phoneNumber,
      parkingLevel: entityObject.parkingLevel,
    );
  }

  @override
  LocationEntity toEntity(LocationDataModel dataModelObject) {
    return LocationEntity(
      id: dataModelObject.id,
      name: dataModelObject.name,
      streetAddress: dataModelObject.streetAddress,
      district: dataModelObject.district,
      cityProvince: dataModelObject.cityProvince,
      country: dataModelObject.country,
      postalCode: dataModelObject.postalCode,
      latitude: dataModelObject.latitude,
      longitude: dataModelObject.longitude,
      operatingHours: dataModelObject.operatingHours
          .map((e) => OperatingHour(
                day: e.day,
                open: e.open,
                close: e.close,
              ))
          .toList(),
      pricing: dataModelObject.pricing,
      phoneNumber: dataModelObject.phoneNumber,
      parkingLevel: dataModelObject.parkingLevel,
    );
  }
}
