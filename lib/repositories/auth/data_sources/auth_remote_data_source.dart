import 'package:ev_charger/repositories/auth/data_models/token_data_model.dart';
import 'package:ev_charger/repositories/user/data_models/user_data_model.dart';
import '../../../shared/data/data_source/remote/postgresql/auth_agest_service.dart';

abstract class AuthDataSource {
  Future<TokenDataModel> signIn(String email, String password);
  Future<UserDataModel> signUp(String email, String password, String name);
  Future<bool> signOut(String refreshToken);
}

class AuthRemoteDataSource implements AuthDataSource {
  final AuthAgestService authAgestService;
  AuthRemoteDataSource(this.authAgestService);

  @override
  Future<TokenDataModel> signIn(String email, String password) async {
    return await authAgestService.signIn(email, password);
  }

  @override
  Future<UserDataModel> signUp(String email, String password, String name) async {
    return await authAgestService.signUp(email, password, name);
  }

  @override
  Future<bool> signOut(String refreshToken) async {
    return await authAgestService.signOut(refreshToken);
  }
}
