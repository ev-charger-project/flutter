import 'package:ev_charger/repositories/auth/data_models/token_data_model.dart';

import '../../../../repositories/user/data_models/user_data_model.dart';

abstract class AuthService {
  Future<TokenDataModel> signIn(String email, String password);
  Future<UserDataModel> signUp(
      String email, String password, String name, String phoneNumber);
  Future<bool> signOut(String refresh_token);
  Future<TokenDataModel> refreshToken(String refresh_token);
  Future<UserDataModel> getMe(String access_token);
}
