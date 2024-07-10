import 'package:ev_charger/shared/data/data_source/remote/postgresql/postgresql_storage_service.dart';

import '../data_models/location_data_model.dart';

abstract class LocationDataSource {
  Future<LocationDataModel> fetchLocationData(String locationId);
}

class LocationRemoteDataSource extends LocationDataSource {
  LocationRemoteDataSource(this.remoteStorageService);
  final PostgresqlStorageService remoteStorageService;
  @override
  Future<LocationDataModel> fetchLocationData(String locationId) async {
    return await remoteStorageService.fetchLocationData(locationId);
  }
}
