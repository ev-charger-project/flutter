import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import '../../../../repositories/auth/auth_repository_impl.dart';
import '../../../../shared/data/data_source/local/storage_service.dart';
import '../../../../shared/domain/providers/secure_storage_service_provider.dart';
import '../../../../shared/domain/providers/auth/auth_repository_provider.dart';

enum SignOutState {
  initial,
  loading,
  success,
  error,
}

class SignOutNotifier extends StateNotifier<SignOutState> {
  final AuthRepositoryImpl authRepository;
  final SecureStorageService secureStorage;

  SignOutNotifier(this.authRepository, this.secureStorage) : super(SignOutState.initial);

  Future<void> signOut() async {
    state = SignOutState.loading;
    try {
      final tokenData = await secureStorage.getToken();
      if (tokenData != null && tokenData.refresh_token.isNotEmpty) {
        await authRepository.signOut(tokenData.refresh_token);
        state = SignOutState.success;
      } else {
        state = SignOutState.error;
      }
    } catch (e) {
      if (e is DioException && e.response != null) {
        log('Error code: ${e.response?.statusCode}');
      } else {
        log('An unknown error occurred: $e');
      }
      state = SignOutState.error;
    }
  }
}

final signOutProvider = StateNotifierProvider<SignOutNotifier, SignOutState>(
      (ref) {
    final authRepository = ref.read(authRepositoryProvider);
    final secureStorage = ref.read(secureStorageServiceProvider);
    return SignOutNotifier(authRepository, secureStorage);
  },
);
