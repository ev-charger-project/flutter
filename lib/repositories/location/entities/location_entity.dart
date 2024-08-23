import 'package:ev_charger/repositories/charger/entities/charger_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../shared/core/mixins/entity_convertible.mixin.dart';
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
    required String street,
    String? district,
    required String city,
    String? postalCode,
    required String country,
    required double latitude,
    required double longitude,
    String? description,
    required List<WorkingDay> workingDays,
    String? pricing,
    String? phoneNumber,
    String? parkingLevel,
    required List<ChargerEntity> ev_chargers,
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
      street: entityObject.street,
      district: entityObject.district,
      city: entityObject.city,
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
      ev_chargers: entityObject.ev_chargers
          .map((charger) => ChargerDataModel(
                station_name: charger.station_name,
                availability: charger.availability,
                ports: charger.ports
                    .map((port) => PortDataModel(
                          power_plug_type: PowerPlugTypeDataModel(
                            powerModel: port.power_plug_type.powerModel,
                            plugType: port.power_plug_type.plugType,
                            plugImage: port.power_plug_type.plugImage,
                            usedInRegions: port.power_plug_type.usedInRegions,
                            additionalNotes:
                                port.power_plug_type.additionalNotes,
                          ),
                          power_model: PowerOutputDataModel(
                            outputValue: port.power_model.outputValue,
                            chargingSpeed: port.power_model.chargingSpeed,
                            voltage: port.power_model.voltage,
                          ),
                        ))
                    .toList(),
              ))
          .toList(),
    );
  }

  @override
  LocationEntity toEntity(LocationDataModel dataModelObject) {
    return LocationEntity(
      id: dataModelObject.id,
      name: dataModelObject.name,
      street: dataModelObject.street,
      district: dataModelObject.district,
      city: dataModelObject.city,
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
      ev_chargers: dataModelObject.ev_chargers
              ?.map((charger) => ChargerEntity(
                    station_name: charger.station_name,
                    availability: charger.availability,
                    ports: charger.ports
                        .map((port) => Port(
                              power_plug_type: PowerPlugTypeEntity(
                                powerModel: port.power_plug_type.powerModel,
                                plugType: port.power_plug_type.plugType,
                                plugImage: port.power_plug_type.plugImage,
                                usedInRegions:
                                    port.power_plug_type.usedInRegions,
                                additionalNotes:
                                    port.power_plug_type.additionalNotes,
                              ),
                              power_model: PowerOutputEntity(
                                outputValue: port.power_model.outputValue,
                                chargingSpeed: port.power_model.chargingSpeed,
                                voltage: port.power_model.voltage,
                              ),
                            ))
                        .toList(),
                  ))
              .toList() ??
          [],
    );
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
