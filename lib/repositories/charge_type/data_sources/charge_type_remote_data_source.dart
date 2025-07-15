import '../../../shared/data/data_source/remote/remote_storage_service.dart';
import '../data_models/charge_type_data_model.dart';

abstract class ChargeTypeDataSource {
  Future<List<ChargeTypeDataModel>> fetchChargeTypeData();
}

class ChargeTypeRemoteDataSource extends ChargeTypeDataSource {
  ChargeTypeRemoteDataSource(this.remoteStorageService);

  final RemoteStorageService remoteStorageService;

  @override
  Future<List<ChargeTypeDataModel>> fetchChargeTypeData() async {
    final data = await remoteStorageService.fetchChargeTypeData();
    return data;
  }
}
