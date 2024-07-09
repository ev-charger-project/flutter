import 'hive/adapters/token.dart';
import 'hive/adapters/user.dart';

/// Storage service interface
abstract class StorageService {
  Future<bool> init();

  Future<bool> dispose();

  bool get hasInitialized;

  Future<bool> clearAll();

  Future<bool> setToken(TokenAdapterObject tokenAdapterObject);

  Future<TokenAdapterObject> getToken();

  Future<bool> clearToken();

  Future<String> getAppTheme();

  Future<bool> setAppTheme(String themeMode);

  Future<UserAdapterObject?> fetchUser();

  Future<bool> saveUser({required UserAdapterObject user});

  Future<bool> deleteUser();

  Future<bool> hasUser();
}
