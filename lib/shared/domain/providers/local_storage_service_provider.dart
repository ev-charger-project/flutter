import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data_source/local/hive/hive_storage_service.dart';

final localStorageServiceProvider = Provider<HiveStorageService>((ref) {
  final HiveStorageService hiveStorageService = HiveStorageService();
  hiveStorageService.init();
  return hiveStorageService;
});
