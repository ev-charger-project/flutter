import 'package:dio/dio.dart';
import 'package:ev_charger/repositories/user/entities/user_entity.dart';

import '../../../../repositories/authentication/auth_repository_impl.dart';
import '../../../../repositories/authentication/entities/sign_up_user_request_entity.dart';
import '../../../../repositories/user/user_repository_impl.dart';

abstract class RegisterUseCase {
  Future<void> execute(
      {required SignUpUserRequest registerUserRequestEntity});
}

class RegisterUseCaseImpl extends RegisterUseCase {
  final AuthenticationRepositoryImpl authRepository;
  final UserRepositoryImpl userRepository;

  RegisterUseCaseImpl(
      {required this.authRepository, required this.userRepository});

  @override
  Future<void> execute(
      {required SignUpUserRequest registerUserRequestEntity}) async {
    try {
      await authRepository.register(registerUserRequestEntity: registerUserRequestEntity);
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
