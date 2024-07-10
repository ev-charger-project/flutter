import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';

import 'package:ev_charger/repositories/location/location_repository.dart';

import 'data_sources/location_remote_data_source.dart';
import 'entities/location_entity.dart';

class LocationRepositoryImpl extends LocationRepository{
  LocationRepositoryImpl(this.remoteDataSource);
  final LocationRemoteDataSource remoteDataSource;

  @override
  Future<LocationEntity> fetchLocationData(String locationId) async {
    final locationDataModelResult = await remoteDataSource.fetchLocationData(locationId);
    final result = LocationMapper().toEntity(locationDataModelResult);
    return result;
  }


}