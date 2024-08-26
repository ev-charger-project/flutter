import 'package:ev_charger/repositories/favourite/data_models/favourite_data_model.dart';
import '../../../shared/data/data_source/remote/remote_storage_service.dart';

abstract class UserInfoDataSource {
  Future<void> deleteFav(String favId, String accessToken);
  Future<void> createFav(String locationId, String accessToken);
  Future<List<FavouriteDataModel>> fetchFav(String token, String id);
}

class UserInfoRemoteDataSource extends UserInfoDataSource {
  UserInfoRemoteDataSource(this.remoteStorageService);
  final RemoteStorageService remoteStorageService;

  @override
  Future<void> deleteFav(String favId, String accessToken) async {
    await remoteStorageService.deleteFav(favId, accessToken);
  }

  @override
  Future<void> createFav(String locationId, String accessToken) async {
    await remoteStorageService.createFav(locationId, accessToken);
  }

  @override
  Future<List<FavouriteDataModel>> fetchFav(String token, String id) async {
    return await remoteStorageService.fetchFav(token, id);
  }
}
