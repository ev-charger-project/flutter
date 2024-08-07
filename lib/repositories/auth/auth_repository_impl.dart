import 'package:ev_charger/repositories/auth/entities/sign_in_entity.dart';
import 'package:ev_charger/repositories/auth/entities/sign_up_entity.dart';
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
  Future<TokenEntity> signIn(SignInEntity signInEntity) async {
    final tokenDataModelResult = await authRemoteDataSource.signIn(
        signInEntity.email,
        signInEntity.password
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
  Future<TokenEntity> signUp(SignUpEntity signUpEntity) async {
    await authRemoteDataSource.signUp(
        signUpEntity.email,
        signUpEntity.password,
        signUpEntity.name
    );
    final tokenDataModelResult = await authRemoteDataSource.signIn(
      signUpEntity.email,
      signUpEntity.password,
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

    await authLocalDataSource.clearToken();

    return result;
  }
}
