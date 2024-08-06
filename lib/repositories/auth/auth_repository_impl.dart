import 'package:ev_charger/repositories/auth/entities/token_entity.dart';

import '../../shared/data/data_source/local/hive/adapters/token.dart';
import 'auth_repository.dart';
import 'data_sources/auth_local_data_source.dart';
import 'data_sources/auth_remote_data_source.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  AuthRepositoryImpl(
      this.authRemoteDataSource, this.authLocalDataSource);

  @override
  Future<TokenEntity> signIn(String email, String password) async {
    final tokenDataModelResult = await authRemoteDataSource.signIn(email, password);

    var tokenAdapterObject = TokenAdapterObject(
      tokenDataModelResult.accessToken,
      tokenDataModelResult.refreshToken,
    );
    await authLocalDataSource.setToken(tokenAdapterObject);

    final result = TokenMapper().toEntity(tokenDataModelResult);
    return result;
  }

  @override
  Future<TokenEntity> signUp(String email, String password, String name) async {
    await authRemoteDataSource.signUp(email, password, name);
    final tokenDataModelResult = await authRemoteDataSource.signIn(
      email,
      password,
    );

    var tokenAdapterObject = TokenAdapterObject(
      tokenDataModelResult.accessToken,
      tokenDataModelResult.refreshToken,
    );
    await authLocalDataSource.setToken(tokenAdapterObject);

    final result = TokenMapper().toEntity(tokenDataModelResult);
    return result;
  }

  @override
  Future<bool> signOut(String refreshToken) async {
    final result =  await authRemoteDataSource.signOut(refreshToken);

    return result;
  }
}
