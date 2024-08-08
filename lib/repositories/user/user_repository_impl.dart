import 'package:dio/dio.dart';
import 'package:ev_charger/repositories/user/user_repository.dart';

import 'data_sources/user_remote_data_source.dart';
import 'entities/user_entity.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(this.remoteDataSource);

  final UserRemoteDataSource remoteDataSource;

  @override
  Future<UserEntity> fetchUser(String access_token) async {
    final userDataModelResult = await remoteDataSource.fetchUser(access_token);
    final result = UserMapper().toEntity(userDataModelResult!);
    return result;
  }
}
