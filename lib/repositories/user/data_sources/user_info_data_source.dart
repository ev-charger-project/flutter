import 'package:ev_charger/repositories/favourite/data_models/favourite_data_model.dart';
import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';
import '../../../shared/data/data_source/remote/remote_storage_service.dart';
abstract class UserInfoDataSource {
  Future<void> createFav(String locationId, String userId);
  Future<List<FavouriteDataModel>> fetchFav (String token,String id);
}

class UserInfoRemoteDataSource extends UserInfoDataSource {
  UserInfoRemoteDataSource(this.remoteStorageService);
  final RemoteStorageService remoteStorageService;

  @override
  Future<void> createFav(String locationId, String access_token) async {
    await remoteStorageService.createUserFav(locationId, access_token);
  }

  @override
  Future<List<FavouriteDataModel>> fetchFav(String token,String id) async {
    return await remoteStorageService.fetchFav(token,id);
  }
}
