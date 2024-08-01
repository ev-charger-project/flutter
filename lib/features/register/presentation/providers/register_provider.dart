import 'package:ev_charger/features/register/presentation/providers/state/register_notifier.dart';
import 'package:ev_charger/features/register/presentation/providers/state/register_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/authentication/authentication_repository_impl.dart';
import '../../../../repositories/user/user_repository_impl.dart';
import '../../../../shared/domain/providers/user/user_cache_provider.dart';
import '../../../login/domain/providers/auth_provider.dart';
import '../../domain/uses_cases/register_use_case.dart';

final registerStateNotifierProvider =
    StateNotifierProvider<RegisterNotifier, RegisterState>(
  (ref) {
    final AuthenticationRepositoryImpl authenticationRepository =
        ref.watch(authRepositoryProvider);
    final UserRepositoryImpl userRepository =
        ref.watch(userRemoteRepositoryProvider);
    final registerUseCase = RegisterUseCaseImpl(
        userRepository: userRepository,
        authRepository: authenticationRepository);
    return RegisterNotifier(registerUseCase: registerUseCase);
  },
);
