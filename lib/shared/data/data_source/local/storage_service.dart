import 'flutter_secure_storage/adapter/token.dart';

abstract class StorageService {
  Future<bool> init();

  Future<bool> dispose();

  bool get hasInitialized;

  Future<bool> clearAll();

  Future<String> getAppTheme();

  Future<bool> setAppTheme(String themeMode);
}

abstract class SecureStorageService {
  Future<bool> init();

  Future<bool> dispose();

  bool get hasInitialized;

  Future<bool> clearToken();

  Future<TokenAdapterObject?> getToken();

  Future<bool> setToken(TokenAdapterObject tokenAdapterObject);

  Future<bool> clearAll();

}