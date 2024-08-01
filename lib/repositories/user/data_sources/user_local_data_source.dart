abstract class UserDataSource {}

class UserLocalDataSource extends UserDataSource {
  UserLocalDataSource(this.storageService);

  final storageService;
}
