import 'package:ev_charger/repositories/user/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity?> fetchUser(String accessToken);
}
