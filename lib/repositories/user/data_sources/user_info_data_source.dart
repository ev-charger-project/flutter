import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';
import '../../../shared/data/data_source/remote/remote_storage_service.dart';
abstract class UserInfoDataSource {
  Future<List<LocationDataModel>> fetchFav (String token,String id);
}

class UserInfoRemoteDataSource extends UserInfoDataSource {
  UserInfoRemoteDataSource(this.remoteStorageService);
  final RemoteStorageService remoteStorageService;

  @override
  Future<List<LocationDataModel>> fetchFav(String token,String id) async {
    return await remoteStorageService.fetchFav(token,id);
  }
}
