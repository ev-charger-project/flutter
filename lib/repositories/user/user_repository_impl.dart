import 'package:dio/dio.dart';
import 'package:ev_charger/repositories/auth/data_sources/auth_local_data_source.dart';
import 'package:ev_charger/repositories/user/user_repository.dart';
import 'package:ev_charger/shared/data/data_source/local/flutter_secure_storage/adapter/token.dart';

import 'data_sources/user_remote_data_source.dart';
import 'entities/user_entity.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(this.remoteDataSource);

  final UserRemoteDataSource remoteDataSource;

  @override
  Future<UserEntity> fetchUser(String access_token) async {
    final userDataModelResult = await remoteDataSource.fetchUser(access_token);
    return UserMapper().toEntity(userDataModelResult);
  }
}
