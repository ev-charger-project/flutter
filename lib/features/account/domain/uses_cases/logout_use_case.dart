import '../../../../repositories/authentication/authentication_repository_impl.dart';

abstract class LogoutUseCase {
  Future<void> execute();
}

class LogoutUseCaseImpl extends LogoutUseCase {
  final AuthenticationRepositoryImpl authRepository;
  LogoutUseCaseImpl({required this.authRepository});

  @override
  Future<void> execute() async {
    try {
      await authRepository.logout();
    } catch(e) {
      print('Error: $e');
    }
  }
}
