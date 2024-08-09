import 'package:ev_charger/repositories/favourite/data_models/favourite_data_model.dart';
import 'package:ev_charger/repositories/location/entities/location_entity.dart';
import 'package:ev_charger/repositories/user/user_info_repo.dart';
import 'data_sources/user_info_data_source.dart';

class UserInfoRepositoryImpl extends UserInfoRepository {
  UserInfoRepositoryImpl(this.remoteDataSource);
  final UserInfoRemoteDataSource remoteDataSource;

  @override
  Future<List<FavouriteDataModel>> fetchFav(String token, String id) async {
    final locationDataModelResult =
        await remoteDataSource.fetchFav(token, id);
    // final locations = locationDataModelResult
    //     .map((item) => item.favourite)
    //     .toList();
    // print("access token: $token");
    // final result = LocationMapper().fromModelList(locations);
    // return result;
    return locationDataModelResult;
  }

  @override
  Future<void> createFav(String locationId, String access_token) async {
    print("create favorite: $locationId, $access_token");
    await remoteDataSource.createFav(locationId, access_token);
  }
}
