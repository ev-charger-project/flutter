import 'package:ev_charger/repositories/user/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> fetchUser();
  Future<bool> deleteUser();
  Future<bool> saveUser({required UserEntity user});
  Future<bool> hasUser();
// Future<List<String>> fetchUserBookMark();
}
