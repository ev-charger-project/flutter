import 'package:dio/dio.dart';

import '../../shared/data/data_source/local/hive/adapters/token.dart';
import 'authentication_repository.dart';
import 'data_sources/auth_local_data_source.dart';
import 'data_sources/auth_remote_data_source.dart';
import 'entities/login_user_request_entity.dart';
import 'entities/register_user_request_entity.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final AuthFirebaseRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  AuthenticationRepositoryImpl(
      this.authRemoteDataSource, this.authLocalDataSource);

  @override
  Future<void> login({required LoginUserRequest loginUserRequestEntity}) async {
    try {
      final loginUserRequestDataModel =
      LoginUserRequestMapper().fromEntity(loginUserRequestEntity);
      final response = await authRemoteDataSource.login(
          loginUserRequestDataModel: loginUserRequestDataModel
      );
      print('response: ${response.tokenData}');
      var tokenAdapterObject = TokenAdapterObject(
          response.tokenData.accessToken,
          response.tokenData.refreshToken
      );

      await authLocalDataSource.setToken(tokenAdapterObject);
    } catch (e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }

  @override
  Future<void> register(
      {required RegisterUserRequest registerUserRequestEntity}) async {
    try {
      final registerUserRequestDataModel =
      RegisterUserRequestMapper().fromEntity(registerUserRequestEntity);
      final response = await authRemoteDataSource.register(
          registerUserRequestDataModel: registerUserRequestDataModel
      );

      var tokenAdapterObject =
      TokenAdapterObject(
        response.tokenData.accessToken,
        response.tokenData.refreshToken
      );

      await authLocalDataSource.setToken(tokenAdapterObject);
    } catch (e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }

  @override
  Future<void> logout() async {
    try {
      await authRemoteDataSource.logout();
      await authLocalDataSource.clearToken();
    } catch (e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }
}
