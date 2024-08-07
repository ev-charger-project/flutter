import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import '../../../../repositories/auth/entities/sign_in_entity.dart';
import '../../../../shared/domain/providers/auth/auth_repository_provider.dart';

final signInProvider = FutureProvider.autoDispose<void>((ref) async {
  final authRepository = ref.read(authRepositoryProvider);
  final signInEntity = ref.watch(signInEntityProvider);

  if (signInEntity == null) {
    throw Exception('SignInEntity is null');
  }

  try {
    await authRepository.signIn(signInEntity);
  } catch (e) {
    if (e is DioException && e.response != null) {
      throw Exception('Error code: ${e.response?.statusCode}');
    } else {
      throw Exception('An unknown error occurred');
    }
  }
});

final signInEntityProvider = StateProvider<SignInEntity?>((ref) => null);