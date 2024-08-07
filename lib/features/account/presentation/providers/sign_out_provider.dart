import 'package:ev_charger/shared/domain/providers/local_storage_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import '../../../../repositories/auth/auth_repository_impl.dart';
import '../../../../shared/domain/providers/auth/auth_repository_provider.dart';

final signOutProvider = FutureProvider.autoDispose<bool>(
      (ref) async {
    final AuthRepositoryImpl authRepository = ref.read(authRepositoryProvider);
    final localStorage = ref.read(localStorageServiceProvider);
    final tokenData = await localStorage.getToken();
    try {
      await authRepository.signOut(tokenData.refreshToken);
      return true;
    } catch (e) {
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  },
);

