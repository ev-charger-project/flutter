import 'package:ev_charger/repositories/location/entities/location_entity.dart';
import 'package:ev_charger/repositories/user/user_info_repo.dart';
import 'data_sources/user_info_data_source.dart';

class UserInfoRepositoryImpl extends UserInfoRepository {
  UserInfoRepositoryImpl(this.remoteDataSource);
  final UserInfoRemoteDataSource remoteDataSource;

  @override
  Future<List<LocationEntity>> fetchFav(String token, String id) async {
    final locationDataModelResult =
        await remoteDataSource.fetchFav(token, id);
    final result = LocationMapper().fromModelList(locationDataModelResult);
    return result;
  }
}
