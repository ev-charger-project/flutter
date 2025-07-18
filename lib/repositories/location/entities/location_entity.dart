import 'package:ev_charger/repositories/amenity/data_models/amenity_data_model.dart';
import 'package:ev_charger/repositories/charger/entities/charger_entity.dart';
import 'package:ev_charger/repositories/location_amenity/data_models/location_amenity_data_model.dart';
import 'package:ev_charger/repositories/location_amenity/entities/location_amenity_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../../amenity/entities/amenity_entity.dart';
import '../../charger/data_models/charger_data_model.dart';
import '../../power_output/data_models/power_output_data_model.dart';
import '../../power_output/entities/power_output_entity.dart';
import '../../power_plug_type/data_models/power_plug_type_data_model.dart';
import '../../power_plug_type/entities/power_plug_type_entity.dart';
import '../data_models/location_data_model.dart';

part 'location_entity.freezed.dart';

@freezed
class LocationEntity with _$LocationEntity {
  const factory LocationEntity({
    String? id,
    required String name,
    String? houseNumber,
    String? street,
    String? district,
    String? state,
    required String city,
    String? county,
    required String country,
    required double latitude,
    required double longitude,
    String? postalCode,
    String? description,
    required List<WorkingDay> workingDays,
    String? pricing,
    String? phoneNumber,
    String? parkingLevel,
    String? websiteUrl,
    String? imageUrl,
    int? totalChargingPorts,
    String? access,
    List? paymentMethods,
    required List<ChargerEntity> ev_chargers,
    required List<LocationAmenityEntity> locationAmenities,
  }) = _LocationEntity;
}

class LocationMapper with EntityConvertible<LocationEntity, LocationDataModel> {
  List<LocationEntity> fromModelList(List<LocationDataModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }

  List<LocationDataModel> toModelList(List<LocationEntity> entities) {
    return entities.map((entity) => fromEntity(entity)).toList();
  }

  @override
  LocationDataModel fromEntity(LocationEntity entityObject) {
    return LocationDataModel(
      id: entityObject.id ?? 'blank',
      name: entityObject.name,
      houseNumber: entityObject.houseNumber,
      street: entityObject.street,
      district: entityObject.district,
      state: entityObject.state,
      city: entityObject.city,
      county: entityObject.county,
      country: entityObject.country,
      postal: entityObject.postalCode,
      latitude: entityObject.latitude,
      longitude: entityObject.longitude,
      description: entityObject.description,
      workingDays: entityObject.workingDays
          .map((workingDay) => WorkingDay(
                day: workingDay.day,
                openTime: workingDay.openTime,
                closeTime: workingDay.closeTime,
              ))
          .toList(),
      pricing: entityObject.pricing,
      phoneNumber: entityObject.phoneNumber,
      parkingLevel: entityObject.parkingLevel,
      websiteUrl: entityObject.websiteUrl,
      imageUrl: entityObject.imageUrl,
      totalChargingPorts: entityObject.totalChargingPorts,
      access: entityObject.access,
      paymentMethods: entityObject.paymentMethods,
      ev_chargers: entityObject.ev_chargers
          .map((charger) => ChargerDataModel(
                station_name: charger.station_name,
                availability: charger.availability,
                ports: charger.ports
                    .map((port) => PortDataModel(
                          power_plug_type: PowerPlugTypeDataModel(
                            supplierName: port.power_plug_type.supplierName,
                            powerModel: port.power_plug_type.powerModel,
                            plugType: port.power_plug_type.plugType,
                            fixedPlug: port.power_plug_type.fixedPlug,
                            plugImageUrl: port.power_plug_type.plugImageUrl,
                            powerPlugRegion: port.power_plug_type.powerPlugRegion,
                            additionalNote: port.power_plug_type.additionalNote,
                          ),
                          power_model: PowerOutputDataModel(
                            outputValue: port.power_model.outputValue,
                            voltage: port.power_model.voltage,
                            amperage: port.power_model.amperage,
                            chargingSpeed: port.power_model.chargingSpeed,
                          ),
                        ))
                    .toList(),
              ))
          .toList(),
      locationAmenities: entityObject.locationAmenities
          .map((locationAmenity) => LocationAmenityDataModel(
                amenities: AmenityDataModel(
                    amenity: locationAmenity.amenities.amenity,
                    imageUrl: locationAmenity.amenities.imageUrl),
              ))
          .toList(),
    );
  }

  @override
  LocationEntity toEntity(LocationDataModel dataModelObject) {
    return LocationEntity(
        id: dataModelObject.id,
        name: dataModelObject.name,
        houseNumber: dataModelObject.houseNumber,
        street: dataModelObject.street,
        district: dataModelObject.district,
        state: dataModelObject.state,
        city: dataModelObject.city,
        county: dataModelObject.county,
        country: dataModelObject.country,
        postalCode: dataModelObject.postal,
        latitude: dataModelObject.latitude,
        longitude: dataModelObject.longitude,
        description: dataModelObject.description,
        workingDays: dataModelObject.workingDays
                ?.map((workingDay) => WorkingDay(
                      day: workingDay.day,
                      openTime: workingDay.openTime,
                      closeTime: workingDay.closeTime,
                    ))
                .toList() ??
            [],
        pricing: dataModelObject.pricing,
        phoneNumber: dataModelObject.phoneNumber,
        parkingLevel: dataModelObject.parkingLevel,
        websiteUrl: dataModelObject.websiteUrl,
        imageUrl: dataModelObject.imageUrl,
        totalChargingPorts: dataModelObject.totalChargingPorts,
        access: dataModelObject.access,
        paymentMethods: dataModelObject.paymentMethods,
        ev_chargers: dataModelObject.ev_chargers
                ?.map((charger) => ChargerEntity(
                      station_name: charger.station_name,
                      availability: charger.availability,
                      ports: charger.ports
                          .map((port) => Port(
                                power_plug_type: PowerPlugTypeEntity(
                                  supplierName: port.power_plug_type.supplierName,
                                  powerModel: port.power_plug_type.powerModel,
                                  plugType: port.power_plug_type.plugType,
                                  fixedPlug: port.power_plug_type.fixedPlug,
                                  plugImageUrl: port.power_plug_type.plugImageUrl,
                                  powerPlugRegion:
                                      port.power_plug_type.powerPlugRegion,
                                  additionalNote:
                                      port.power_plug_type.additionalNote,
                                ),
                                power_model: PowerOutputEntity(
                                  outputValue: port.power_model.outputValue,
                                  voltage: port.power_model.voltage,
                                  amperage: port.power_model.amperage,
                                  chargingSpeed: port.power_model.chargingSpeed,
                                  description: port.power_model.description,
                                ),
                              ))
                          .toList(),
                    ))
                .toList() ??
            [],
        locationAmenities: dataModelObject.locationAmenities
                ?.map((locationAmenity) => LocationAmenityEntity(
                      amenities: AmenityEntity(
                        amenity: locationAmenity.amenities.amenity,
                        imageUrl: locationAmenity.amenities.imageUrl,
                      ),
                    ))
                .toList() ??
            []);
  }
}

String dayToString(int day) {
  switch (day) {
    case 1:
      return "Sunday";
    case 2:
      return "Monday";
    case 3:
      return "Tuesday";
    case 4:
      return "Wednesday";
    case 5:
      return "Thursday";
    case 6:
      return "Friday";
    case 7:
      return "Saturday";
    default:
      throw ArgumentError("Invalid day: $day");
  }
}
