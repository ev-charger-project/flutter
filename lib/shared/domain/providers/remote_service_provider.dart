import 'package:ev_charger/shared/data/data_source/remote/postgresql/postgresql_storage_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final remoteStorageServiceProvider = Provider<PostgresqlStorageService>((ref) {
  return PostgresqlStorageService();
});
