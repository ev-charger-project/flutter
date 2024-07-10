import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';
import 'package:ev_charger/shared/data/data_source/remote/remote_storage_service.dart';

class PostgresqlStorageService extends RemoteStorageService {
  @override
  Future<LocationDataModel> fetchLocationData(String locationId) async {
    await Future.delayed(Duration(seconds: 1));
    return const LocationDataModel(
        id: 'test id',
        name: 'test name',
        streetAddress: '1234 test street, test district',
        cityProvince: 'test city',
        country: 'test city',
        latitude: 15.2,
        longitude: 16.2,
        workingDay: WorkingDay(
            mon: '6-9',
            tue: '6-9',
            wed: '6-9',
            thu: '6-9',
            fri: '6-9',
            sat: '6-9',
            sun: '6-9'),
        description:
            'Long long long text that goes on for very long Long long long text that goes on for very long Long long long text that goes on for very long Long long long text that goes on for very long Long long long text that goes on for very longLong long long text that goes on for very longLong long long text that goes on for very long Long long long text that goes on for very long Long long long text that goes on for very longLong long long text that goes on for very long ');
  }
}
