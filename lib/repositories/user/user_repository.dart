import 'package:ev_charger/repositories/user/entities/user_entity.dart';
import 'package:ev_charger/shared/data/data_source/local/flutter_secure_storage/adapter/token.dart';

abstract class UserRepository {
  Future<UserEntity?> fetchUser(String access_token);
}
