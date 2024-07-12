import 'package:ev_charger/repositories/marker/data_models/charger_marker_data_model.dart';
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

  @override
  Future<List<ChargerMarkerDataModel>> fetchMarker(int radius) async {
    await Future.delayed(Duration(seconds: 1));
    return const [
      ChargerMarkerDataModel(
          id: '1a', latitude: '10.802940', longitude: '106.665078'),
      ChargerMarkerDataModel(
          id: '1b', latitude: '10.803778', longitude: '106.662877'),
      ChargerMarkerDataModel(
          id: '1c', latitude: '10.801026', longitude: '106.662651'),
      ChargerMarkerDataModel(
          id: '1d', latitude: '10.802940', longitude: '106.665093'),
      ChargerMarkerDataModel(
          id: '1e', latitude: '10.801163', longitude: '106.664041'),
      ChargerMarkerDataModel(
          id: '1f', latitude: '10.800105', longitude: '106.664666'),
      ChargerMarkerDataModel(
          id: '1g', latitude: '10.798799', longitude: '106.663463'),

    ];
  }
}
