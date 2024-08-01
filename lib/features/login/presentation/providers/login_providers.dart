import 'package:ev_charger/features/login/presentation/providers/state/login_notifier.dart';
import 'package:ev_charger/features/login/presentation/providers/state/login_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/authentication/authentication_repository_impl.dart';
import '../../../../repositories/user/user_repository.dart';
import '../../domain/providers/auth_provider.dart';
import '../../../../shared/domain/providers/user/user_cache_provider.dart';
import '../../domain/uses_cases/login_use_case.dart';


final loginStateNotifierProvider =
    StateNotifierProvider<LoginNotifier, LoginState>(
  (ref) {
    final AuthenticationRepositoryImpl authenticationRepository =
        ref.watch(authRepositoryProvider);
    final UserRepository userRepository =
        ref.watch(userRemoteRepositoryProvider);
    final loginUseCase = LoginUseCaseImpl(
        userRepository: userRepository,
        authRepository: authenticationRepository);

    return LoginNotifier(loginUseCase: loginUseCase);
  },
);
