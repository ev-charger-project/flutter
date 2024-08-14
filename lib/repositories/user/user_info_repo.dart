import 'package:ev_charger/repositories/favourite/data_models/favourite_data_model.dart';

import '../location/entities/location_entity.dart';

abstract class UserInfoRepository {
  Future<List<FavouriteDataModel>> fetchFav(String token, String id);
  Future<void> createFav(String locationId, String userId);
  Future<void> deleteFav(String favId, String userId);
}
