import 'package:hive_flutter/hive_flutter.dart';
import '../storage_service.dart';

class HiveStorageService extends StorageService {
  bool initialized = false;
  late Box _themeBox;

  static Future<void> HiveInit() async {
    await Hive.initFlutter();
    await Hive.openBox('themeBox');
  }

  @override
  Future<bool> init() async {
    if (hasInitialized) {
      return true;
    }
    initialized = true;
    _themeBox = Hive.box('themeBox');
    return true;
  }

  @override
  bool get hasInitialized => initialized;

  @override
  Future<String> getAppTheme() async {
    return await _themeBox.get('appThemeKey', defaultValue: 'light');
  }

  @override
  Future<bool> setAppTheme(String themeMode) async {
    await _themeBox.put('appThemeKey', themeMode);
    return true;
  }

  @override
  Future<bool> clearAll() async {
    await _themeBox.clear();
    return true;
  }

  @override
  Future<bool> dispose() async {
    await _themeBox.close();
    await Hive.close();
    return true;
  }
}
