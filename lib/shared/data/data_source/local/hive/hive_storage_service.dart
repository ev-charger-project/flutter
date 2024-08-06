import 'adapters/const.dart';
import 'adapters/token.dart';
import '../storage_service.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveStorageService extends StorageService {
  bool initialized = false;
  late Box _authBox;
  late Box _themeBox;

  static HiveInit() async {
    await Hive.initFlutter();

    Hive.registerAdapter(TokenAdapterObjectAdapter());
    await Hive.openBox(HiveConstants.authBox);
    await Hive.openBox(HiveConstants.themeBox);
  }

  @override
  Future<bool> init() async {
    if (hasInitialized) {
      return true;
    }
    initialized = true;

    _authBox = Hive.box(HiveConstants.authBox);
    _themeBox = Hive.box(HiveConstants.themeBox);
    return true;
  }

  @override
  bool get hasInitialized => initialized;

  @override
  Future<bool> clearToken() async {
    var token = TokenAdapterObject("", "");
    await _authBox.put(HiveConstants.tokenKey, token);
    return true;
  }

  @override
  Future<TokenAdapterObject> getToken() async {
    return await _authBox.get(HiveConstants.tokenKey,
        defaultValue: TokenAdapterObject("", ""));
  }

  @override
  Future<bool> setToken(TokenAdapterObject tokenAdapterObject) async {
    // print("token: ${tokenAdapterObject.accessToken}");
    await _authBox.put(HiveConstants.tokenKey, tokenAdapterObject);
    return true;
  }

  @override
  Future<String> getAppTheme() async {
    return await _themeBox.get(HiveConstants.appThemeKey,
        defaultValue: "light");
  }

  @override
  Future<bool> setAppTheme(String themeMode) async {
    await _themeBox.put(HiveConstants.appThemeKey, themeMode);
    return true;
  }

  @override
  Future<bool> dispose() async {
    await _authBox.close();
    await _themeBox.close();
    await Hive.close();
    return true;
  }

  @override
  Future<bool> clearAll() async {
    await _authBox.clear();
    await _themeBox.clear();
    return true;
  }
}
