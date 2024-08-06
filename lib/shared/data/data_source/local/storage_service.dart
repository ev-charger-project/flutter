import 'hive/adapters/token.dart';

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
}
