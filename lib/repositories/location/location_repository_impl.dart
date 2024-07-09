import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';
import 'package:ev_charger/repositories/location/location_repository.dart';

import 'data_sources/location_remote_data_source.dart';

class LocationRepositoryImpl extends LocationRepository{
  LocationRepositoryImpl(this.remoteDataSource);
  final LocationRemoteDataSource remoteDataSource;

  @override
  Future<LocationDataModel> fetchLocationData(String locationId) {
    return remoteDataSource.fetchLocationData(locationId);
  }


}