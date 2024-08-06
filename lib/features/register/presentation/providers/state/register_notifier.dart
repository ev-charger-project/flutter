import 'package:dio/dio.dart';
import 'package:ev_charger/features/register/presentation/providers/state/register_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../repositories/authentication/entities/sign_up_user_request_entity.dart';
import '../../../domain/uses_cases/register_use_case.dart';

class RegisterNotifier extends StateNotifier<RegisterState> {
  final RegisterUseCase registerUseCase;

  RegisterNotifier({required this.registerUseCase})
      : super(const RegisterState.initial());

  Future<void> registerUser(String email, String password) async {
    state = const RegisterState.loading();
    final registerUserRequestEntity =
        SignUpUserRequest(email: email, password: password);
    try {
      await registerUseCase.execute(registerUserRequestEntity: registerUserRequestEntity);
      state = const RegisterState.success();
    } catch(e) {
      state = const RegisterState.failure();
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }
}
