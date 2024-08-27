import 'dart:developer';

import 'package:ev_charger/repositories/favourite/data_models/favourite_data_model.dart';
import 'package:ev_charger/repositories/user/user_info_repo.dart';
import 'data_sources/user_info_data_source.dart';

class UserInfoRepositoryImpl extends UserInfoRepository {
  UserInfoRepositoryImpl(this.remoteDataSource);
  final UserInfoRemoteDataSource remoteDataSource;

  @override
  Future<List<FavouriteDataModel>> fetchFav(String token, String id) async {
    final locationDataModelResult = await remoteDataSource.fetchFav(token, id);
    return locationDataModelResult;
  }

  @override
  Future<void> createFav(String locationId, String accessToken) async {
    log("create favorite: $locationId, $accessToken");
    await remoteDataSource.createFav(locationId, accessToken);
  }

  @override
  Future<void> deleteFav(String favId, String accessToken) async {
    log("delete favorite: $favId, $accessToken");
    await remoteDataSource.deleteFav(favId, accessToken);
  }
}
