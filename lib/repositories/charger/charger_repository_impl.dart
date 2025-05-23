import 'package:ev_charger/repositories/charger/entities/charger_entity.dart';

import 'charger_repository.dart';
import 'data_sources/charger_remote_data_source.dart';

class ChargerRepositoryImpl extends ChargerRepository {
  ChargerRepositoryImpl(this.remoteDataSource);
  final ChargerRemoteDataSource remoteDataSource;

  @override
  Future<List<List<ChargerEntity>>> fetchChargersFromLocation(
      String locationId) {
    // TODO: implement fetchChargersFromLocation
    throw UnimplementedError();
  }
}
