import 'package:ev_charger/shared/data/data_source/remote/postgresql/agest_storage_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final remoteStorageServiceProvider = Provider<AgestStorageService>((ref) {
  return AgestStorageService();
});
