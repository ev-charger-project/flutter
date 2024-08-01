import 'package:dio/dio.dart';
import 'package:ev_charger/repositories/user/user_repository.dart';

import 'data_sources/user_remote_data_source.dart';
import 'entities/user_entity.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(this.data_source);

  final UserRemoteDataSource data_source;

  @override
  Future<bool> deleteUser() {
    return data_source.deleteUser();
  }

  @override
  Future<UserEntity> fetchUser() async {
    try{
      final userDataModelResult = await data_source.fetchUser();
      return UserMapper().toEntity(userDataModelResult);
    } catch(e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }

  @override
  Future<bool> saveUser({required UserEntity user}) async {
    final userDataModel = UserMapper().fromEntity(user);
    return await data_source.saveUser(user: userDataModel);
  }

  @override
  Future<bool> hasUser() {
    return data_source.hasUser();
  }
}
