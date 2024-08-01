import 'package:ev_charger/features/account/presentation/providers/state/logout_notifier.dart';
import 'package:ev_charger/features/account/presentation/providers/state/logout_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/authentication/authentication_repository_impl.dart';
import '../../../login/domain/providers/auth_provider.dart';
import '../../domain/uses_cases/logout_use_case.dart';

final logoutStateNotifierProvider =
    StateNotifierProvider<LogoutNotifier, LogoutState>(
  (ref) {
    final AuthenticationRepositoryImpl authenticationRepository =
        ref.watch(authRepositoryProvider);
    final logoutUseCase =
        LogoutUseCaseImpl(authRepository: authenticationRepository);
    return LogoutNotifier(logoutUseCase: logoutUseCase);
  },
);
