import 'package:ev_charger/repositories/user/entities/user_entity.dart';

import 'entities/token_entity.dart';


abstract class AuthRepository {
  Future<TokenEntity> signIn(String email, String password);
  Future<TokenEntity> signUp(String email, String password, String name);
  Future<bool> signOut(String refreshToken);
}
