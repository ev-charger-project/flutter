import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../repositories/auth/auth_repository_impl.dart';
import '../../../../repositories/auth/entities/sign_up_entity.dart';
import '../../../../shared/domain/providers/auth/auth_repository_provider.dart';

enum SignUpState {
  initial,
  loading,
  success,
  error,
}

class SignUpNotifier extends StateNotifier<SignUpState> {
  final AuthRepositoryImpl authRepository;

  SignUpNotifier(this.authRepository) : super(SignUpState.initial);

  Future<void> signUp(SignUpEntity signUpEntity) async {

    state = SignUpState.loading;
    try {
      await authRepository.signUp(signUpEntity);
      state = SignUpState.success;
      log('success');
    } catch (e) {
      state = SignUpState.error;
    }
  }
}

final signUpProvider = StateNotifierProvider<SignUpNotifier, SignUpState>(
      (ref) {
    final authRepository = ref.read(authRepositoryProvider);
    return SignUpNotifier(authRepository);
  },
);
