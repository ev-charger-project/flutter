import 'entities/login_user_request_entity.dart';
import 'entities/register_user_request_entity.dart';

abstract class AuthenticationRepository {
  Future<void> login(
      {required LoginUserRequest loginUserRequestEntity});
  Future<void> register(
      {required RegisterUserRequest registerUserRequestEntity});
  Future<void> logout();
}
