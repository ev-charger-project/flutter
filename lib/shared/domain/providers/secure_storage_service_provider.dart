import 'package:ev_charger/shared/data/data_source/local/flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final secureStorageServiceProvider =
    Provider<FlutterSecureStorageService>((ref) {
  final FlutterSecureStorageService flutterSecureStorageService =
      FlutterSecureStorageService();
  flutterSecureStorageService.init();
  return flutterSecureStorageService;
});
