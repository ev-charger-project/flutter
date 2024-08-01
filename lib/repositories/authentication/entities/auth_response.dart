import 'package:ev_charger/repositories/authentication/entities/token_entity.dart';
import 'package:ev_charger/repositories/user/entities/user_entity.dart';

class AuthResponse {
  final Token tokenData;
  final UserEntity userData;

  AuthResponse({required this.tokenData, required this.userData});
}
