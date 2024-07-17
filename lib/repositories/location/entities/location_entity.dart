import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../../charger/data_models/charger_data_model.dart';
import '../data_models/location_data_model.dart';

part 'location_entity.freezed.dart';

@freezed
class LocationEntity with _$LocationEntity {
  const factory LocationEntity({
    required String name,
    required String street,
    String? district,
    required String city,
    String? postalCode,
    required String country,
    String? description,
    required WorkingDay workingDay,
    String? pricing,
    String? phoneNumber,
    String? parkingLevel,
    required ChargerDataModel chargerDataModel,
  }) = _LocationEntity;
}
//
// class LocationMapper with EntityConvertible<LocationEntity, LocationDataModel> {
//   @override
//   LocationDataModel fromEntity(LocationEntity entityObject) {
//     return LocationDataModel(
//       id: entityObject.id,
//       name: entityObject.name,
//       streetAddress: entityObject.streetAddress,
//       district: entityObject.district,
//       cityProvince: entityObject.cityProvince,
//       country: entityObject.country,
//       postalCode: entityObject.postalCode,
//       latitude: entityObject.latitude,
//       longitude: entityObject.longitude,
//       description: entityObject.description,
//       workingDay: WorkingDay(
//         mon: entityObject.workingDay.mon,
//         tue: entityObject.workingDay.tue,
//         wed: entityObject.workingDay.wed,
//         thu: entityObject.workingDay.thu,
//         fri: entityObject.workingDay.fri,
//         sat: entityObject.workingDay.sat,
//         sun: entityObject.workingDay.sun,
//       ),
//       pricing: entityObject.pricing,
//       phoneNumber: entityObject.phoneNumber,
//       parkingLevel: entityObject.parkingLevel,
//     );
//   }
//
//   @override
//   LocationEntity toEntity(LocationDataModel dataModelObject) {
//     return LocationEntity(
//       id: dataModelObject.id,
//       name: dataModelObject.name,
//       streetAddress: dataModelObject.streetAddress,
//       district: dataModelObject.district,
//       cityProvince: dataModelObject.cityProvince,
//       country: dataModelObject.country,
//       postalCode: dataModelObject.postalCode,
//       latitude: dataModelObject.latitude,
//       longitude: dataModelObject.longitude,
//       description: dataModelObject.description,
//       workingDay: WorkingDay(
//         mon: dataModelObject.workingDay.mon,
//         tue: dataModelObject.workingDay.tue,
//         wed: dataModelObject.workingDay.wed,
//         thu: dataModelObject.workingDay.thu,
//         fri: dataModelObject.workingDay.fri,
//         sat: dataModelObject.workingDay.sat,
//         sun: dataModelObject.workingDay.sun,
//       ),
//       pricing: dataModelObject.pricing,
//       phoneNumber: dataModelObject.phoneNumber,
//       parkingLevel: dataModelObject.parkingLevel,
//     );
//   }
// }
