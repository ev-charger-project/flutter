import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';
import 'package:ev_charger/shared/data/data_source/remote/remote_storage_service.dart';

class PostgresqlStorageService extends RemoteStorageService{
  @override
  Future<LocationDataModel> fetchLocationData(String locationId) async {
    await Future.delayed(Duration(seconds: 1));
    return const LocationDataModel(id: 'test id', name: 'test name', streetAddress: '1234 test street, test district', cityProvince: 'test city', country: 'test city', latitude: 15.2, longitude: 16.2, operatingHours: [OperatingHour(day: "Weekdays", open: '6:00', close: '20:00')]);
  }

}