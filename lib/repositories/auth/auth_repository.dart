import 'package:ev_charger/repositories/auth/entities/sign_in_entity.dart';

import 'entities/sign_up_entity.dart';
import 'entities/token_entity.dart';

abstract class AuthRepository {
  Future<TokenEntity> signIn(SignInEntity signInEntity);
  Future<TokenEntity> signUp(SignUpEntity signUpEntity);
  Future<bool> signOut(String refreshToken);
  Future<TokenEntity> refreshToken(String refreshToken);
}
