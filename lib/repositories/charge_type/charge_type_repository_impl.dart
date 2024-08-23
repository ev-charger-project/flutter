import 'charge_type_repository.dart';
import 'data_sources/charge_type_remote_data_source.dart';
import 'entities/charge_type_entity.dart';

class ChargeTypeRepositoryImpl extends ChargeTypeRepository {
  ChargeTypeRepositoryImpl(this.remoteDataSource);

  final ChargeTypeRemoteDataSource remoteDataSource;

  @override
  Future<List<ChargeTypeEntity>> fetchChargeType() async {
    final chargeTypeDataModelResult =
        await remoteDataSource.fetchChargeTypeData();
    final result = ChargeTypeMapper().toEntityList(chargeTypeDataModelResult);
    return result;
  }
}
