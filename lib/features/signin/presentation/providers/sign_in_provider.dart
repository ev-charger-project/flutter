import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../repositories/auth/auth_repository_impl.dart';
import '../../../../repositories/auth/entities/sign_in_entity.dart';
import '../../../../shared/domain/providers/auth/auth_repository_provider.dart';

enum SignInState {
  initial,
  loading,
  success,
  error,
}

class SignInNotifier extends StateNotifier<SignInState> {
  final AuthRepositoryImpl authRepository;

  SignInNotifier(this.authRepository) : super(SignInState.initial);

  Future<void> signIn(SignInEntity signInEntity) async {
    state = SignInState.loading;
    try {
      await authRepository.signIn(signInEntity);
      state = SignInState.success;
    } catch (e) {
      state = SignInState.error;
    }
  }
}

final signInProvider = StateNotifierProvider<SignInNotifier, SignInState>(
      (ref) {
    final authRepository = ref.read(authRepositoryProvider);
    return SignInNotifier(authRepository);
  },
);
