import '../location/entities/location_entity.dart';

abstract class UserInfoRepository {
  Future<List<LocationEntity>> fetchFav(String token, String id);
}
