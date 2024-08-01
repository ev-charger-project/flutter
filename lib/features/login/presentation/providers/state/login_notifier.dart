import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../repositories/authentication/entities/login_user_request_entity.dart';
import '../../../domain/uses_cases/login_use_case.dart';
import 'login_state.dart';

class LoginNotifier extends StateNotifier<LoginState> {
  final LoginUseCaseImpl loginUseCase;

  LoginNotifier({required this.loginUseCase})
      : super(const LoginState.initial());

  Future<void> loginUser(String email, String password) async {
    state = const LoginState.loading();
    print('check pass: $email, $password');
    final loginUserRequestEntity =
        LoginUserRequest(email: email, password: password);

    try {
      await loginUseCase.execute(loginUserRequestEntity: loginUserRequestEntity);
      state = const LoginState.success();
    } catch (e) {
      state = const LoginState.failure();
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');

      }
    }
  }
}
