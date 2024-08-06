import '../../../shared/data/data_source/local/hive/adapters/token.dart';
import '../../../shared/data/data_source/local/hive/hive_storage_service.dart';

abstract class AuthLocalDataSource {
  Future<bool> setToken(TokenAdapterObject tokenAdapterObject);

  Future<TokenAdapterObject> getToken();

  Future<bool> clearToken();
}

class AuthHiveLocalDataSource extends AuthLocalDataSource {
  final HiveStorageService storageService;

  AuthHiveLocalDataSource(this.storageService);

  @override
  Future<bool> clearToken() {
    return storageService.clearToken();
  }

  @override
  Future<TokenAdapterObject> getToken() {
    return storageService.getToken();
  }

  @override
  Future<bool> setToken(TokenAdapterObject tokenAdapterObject) {
    return storageService.setToken(tokenAdapterObject);
  }
}
