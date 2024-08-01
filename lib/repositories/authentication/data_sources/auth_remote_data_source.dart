import 'package:firebase_auth/firebase_auth.dart';
import '../data_models/auth_response_data_model.dart';
import '../data_models/login_user_request_data_model.dart';
import '../data_models/register_user_request_data_model.dart';
import 'auth_api.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponseDataModel> login({
    required LoginUserRequestDataModel loginUserRequestDataModel,
  });
  Future<AuthResponseDataModel> register({
    required RegisterUserRequestDataModel registerUserRequestDataModel,
  });
  Future<void> logout();
}

class AuthFirebaseRemoteDataSource implements AuthRemoteDataSource {
  final AuthApi authApi;

  AuthFirebaseRemoteDataSource(FirebaseAuth firebaseAuth)
      : authApi = AuthApi(firebaseAuth);

  @override
  Future<AuthResponseDataModel> login({
    required LoginUserRequestDataModel loginUserRequestDataModel,
  }) async {
      final authResponse = await authApi.login(
        loginUserRequestDataModel.email,
        loginUserRequestDataModel.password,
      );
      print('authResponse: $authResponse');
      return authResponse;
    }

  @override
  Future<AuthResponseDataModel> register({
    required RegisterUserRequestDataModel registerUserRequestDataModel,
  }) async {
    final authResponse = await authApi.register(
      registerUserRequestDataModel.email,
      registerUserRequestDataModel.password,
    );
    return authResponse;
  }

  @override
  Future<void> logout() async {
      await authApi.logout();
  }
}
