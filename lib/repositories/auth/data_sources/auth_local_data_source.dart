import '../../../shared/data/data_source/local/flutter_secure_storage/adapter/token.dart';
import '../../../shared/data/data_source/local/flutter_secure_storage/flutter_secure_storage.dart';

abstract class AuthLocalDataSource {
  Future<bool> setToken(TokenAdapterObject tokenAdapterObject);

  Future<TokenAdapterObject?> getToken();

  Future<bool> clearToken();
}

class AuthSecureLocalDataSource extends AuthLocalDataSource {
  final FlutterSecureStorageService secureStorageService;

  AuthSecureLocalDataSource(this.secureStorageService);

  @override
  Future<bool> clearToken() {
    return secureStorageService.clearToken();
  }

  @override
  Future<TokenAdapterObject?> getToken() {
    return secureStorageService.getToken();
  }

  @override
  Future<bool> setToken(TokenAdapterObject tokenAdapterObject) {
    return secureStorageService.setToken(tokenAdapterObject);
  }
}
