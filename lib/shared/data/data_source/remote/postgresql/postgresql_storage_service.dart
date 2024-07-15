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
  Future<List<ChargerMarkerDataModel>> fetchMarker(String userLat, String userLong, int radius) async {

    double baseLat = 10.802940;
    double baseLong = 106.66505;

    List<ChargerMarkerDataModel> markers = [];

    for (int i = 0; i < 10; i++) {
      for (int j = 0; j < 10; j++) {
        String id = 'id_${i * 10 + j}';
        String lat = (baseLat + i * 0.005).toString();
        String long = (baseLong + j * 0.005).toString();
        markers.add(ChargerMarkerDataModel(id: id, latitude: lat, longitude: long));
      }
    }

    return markers;
  }
}
