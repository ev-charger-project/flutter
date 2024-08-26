import 'dart:async'; // Để sử dụng StreamController
import 'package:ev_charger/shared/data/data_source/local/flutter_secure_storage/adapter/token.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../storage_service.dart';

class FlutterSecureStorageService extends SecureStorageService {
  bool initialized = false;
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  final _tokenController = StreamController<TokenAdapterObject?>.broadcast();

  @override
  Future<bool> init() async {
    if (hasInitialized) {
      return true;
    }
    initialized = true;

    final accessToken = await _storage.read(key: 'access_token');
    final refreshToken = await _storage.read(key: 'refresh_token');

    final token = accessToken != null && refreshToken != null
        ? TokenAdapterObject(
            access_token: accessToken, refresh_token: refreshToken)
        : null;

    _tokenController.add(token);

    return true;
  }

  @override
  bool get hasInitialized => initialized;

  @override
  Future<bool> clearToken() async {
    await _storage.delete(key: 'access_token');
    await _storage.delete(key: 'refresh_token');
    _tokenController.add(null);
    return true;
  }

  @override
  Future<TokenAdapterObject?> getToken() async {
    final accessToken = await _storage.read(key: 'access_token');
    final refreshToken = await _storage.read(key: 'refresh_token');

    return accessToken != null && refreshToken != null
        ? TokenAdapterObject(
            access_token: accessToken, refresh_token: refreshToken)
        : null;
  }

  @override
  Future<bool> setToken(TokenAdapterObject tokenAdapterObject) async {
    await _storage.write(
        key: 'access_token', value: tokenAdapterObject.access_token);
    await _storage.write(
        key: 'refresh_token', value: tokenAdapterObject.refresh_token);

    _tokenController.add(tokenAdapterObject);
    return true;
  }

  @override
  Future<bool> dispose() async {
    await _tokenController.close();
    return true;
  }

  @override
  Future<bool> clearAll() async {
    await _storage.deleteAll();
    return true;
  }

  Stream<TokenAdapterObject?> get tokenStream => _tokenController.stream;
}
