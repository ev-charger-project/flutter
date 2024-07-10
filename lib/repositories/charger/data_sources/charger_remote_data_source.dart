import 'package:ev_charger/shared/data/data_source/remote/postgresql/postgresql_storage_service.dart';

import '../data_models/charger_data_model.dart';


abstract class ChargerDataSource{
  Future<ChargerDataModel> fetchChargerData(String locationId);
}

class ChargerRemoteDataSource extends ChargerDataSource {
  ChargerRemoteDataSource(this.remoteStorageService);
  final PostgresqlStorageService remoteStorageService;
  @override
  Future<ChargerDataModel> fetchChargerData(String locationId) async {
    // return await remoteStorageService.fetchChargerData(locationId);
    throw UnimplementedError();
  }

}