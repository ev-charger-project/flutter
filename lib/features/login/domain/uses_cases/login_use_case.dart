
import 'package:dio/dio.dart';
import 'package:ev_charger/repositories/user/entities/user_entity.dart';

import '../../../../repositories/authentication/authentication_repository_impl.dart';
import '../../../../repositories/authentication/entities/login_user_request_entity.dart';
import '../../../../repositories/user/user_repository.dart';

abstract class LoginUseCase {
  Future<void> execute(
      {required LoginUserRequest loginUserRequestEntity});
}

class LoginUseCaseImpl extends LoginUseCase {
  final AuthenticationRepositoryImpl authRepository;
  final UserRepository userRepository;

  LoginUseCaseImpl(
      {required this.authRepository, required this.userRepository});

  @override
  Future<void> execute(
      {required LoginUserRequest loginUserRequestEntity}) async {
    print('loginUserRequestEntity: $loginUserRequestEntity');
    try {
      await authRepository.login(loginUserRequestEntity: loginUserRequestEntity);
    } catch (e) {
      print('Error in LoginUseCaseImpl: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }

  }
}
