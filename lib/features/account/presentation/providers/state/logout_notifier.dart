import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/uses_cases/logout_use_case.dart';
import 'logout_state.dart';

class LogoutNotifier extends StateNotifier<LogoutState> {
  final LogoutUseCase logoutUseCase;

  LogoutNotifier({required this.logoutUseCase})
      : super(const LogoutState.initial());

  Future<void> logoutUser() async {
    state = const LogoutState.loading();
    try {
      await logoutUseCase.execute();
      state = const LogoutState.success();
    } catch(e) {
      state = const LogoutState.failure();
      print('Error: $e');
    }
  }
}
