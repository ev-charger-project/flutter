import 'package:ev_charger/repositories/auth/entities/sign_in_entity.dart';
import 'package:ev_charger/repositories/auth/entities/sign_up_entity.dart';
import 'package:ev_charger/repositories/auth/entities/token_entity.dart';

import '../../shared/data/data_source/local/flutter_secure_storage/adapter/token.dart';
import 'auth_repository.dart';
import 'data_sources/auth_local_data_source.dart';
import 'data_sources/auth_remote_data_source.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  AuthRepositoryImpl(
      this.authRemoteDataSource, this.authLocalDataSource);

  @override
  Future<TokenEntity> signIn(SignInEntity signInEntity) async {
    final tokenDataModelResult = await authRemoteDataSource.signIn(
        signInEntity.email,
        signInEntity.password
    );
    var tokenAdapterObject = TokenAdapterObject(
      access_token: tokenDataModelResult.access_token,
      refresh_token: tokenDataModelResult.refresh_token,
    );
    await authLocalDataSource.setToken(tokenAdapterObject);

    final result = TokenMapper().toEntity(tokenDataModelResult);
    return result;
  }

  @override
  Future<TokenEntity> signUp(SignUpEntity signUpEntity) async {
    await authRemoteDataSource.signUp(
        signUpEntity.email,
        signUpEntity.password,
        signUpEntity.name,
        signUpEntity.phoneNumber
    );
    final tokenDataModelResult = await authRemoteDataSource.signIn(
      signUpEntity.email,
      signUpEntity.password,
    );

    var tokenAdapterObject = TokenAdapterObject(
      access_token: tokenDataModelResult.access_token,
      refresh_token: tokenDataModelResult.refresh_token,
    );
    await authLocalDataSource.setToken(tokenAdapterObject);

    final result = TokenMapper().toEntity(tokenDataModelResult);
    return result;
  }

  @override
  Future<bool> signOut(String refresh_token) async {
    final result =  await authRemoteDataSource.signOut(refresh_token);

    await authLocalDataSource.clearToken();

    return result;
  }
  @override
  Future<TokenEntity> refreshToken(String refresh_token) async {

    final tokenDataModelResult =  await authRemoteDataSource.refreshToken(refresh_token);
    var tokenAdapterObject = TokenAdapterObject(
      access_token: tokenDataModelResult.access_token,
      refresh_token: tokenDataModelResult.refresh_token,
    );
    await authLocalDataSource.setToken(tokenAdapterObject);

    final result = TokenMapper().toEntity(tokenDataModelResult);
    return result;
  }
}
