import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import '../../../../repositories/auth/auth_repository_impl.dart';
import '../../../../repositories/auth/entities/sign_up_entity.dart';
import '../../../../shared/domain/providers/auth/auth_repository_provider.dart';

final signUpProvider = FutureProvider.autoDispose.family<void, SignUpEntity>(
      (ref, signUpEntity) async {
    final AuthRepositoryImpl authRepository = ref.read(authRepositoryProvider);

    try {
      await authRepository.signUp(signUpEntity);
    } catch (e) {
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  },
);

