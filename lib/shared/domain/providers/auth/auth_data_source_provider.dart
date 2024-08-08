import 'package:ev_charger/repositories/auth/data_sources/auth_local_data_source.dart';
import 'package:ev_charger/shared/data/data_source/local/flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ev_charger/shared/data/data_source/local/hive/hive_storage_service.dart';
import 'package:ev_charger/shared/data/data_source/remote/postgresql/auth_agest_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/auth/data_sources/auth_remote_data_source.dart';

final authRemoteDataSourceProvider =
Provider.family<AuthRemoteDataSource, AuthAgestService>(
      (_, networkService) => AuthRemoteDataSource(networkService),
);

final authLocalDataSourceProvider =
Provider.family<AuthLocalDataSource, FlutterSecureStorageService>(
      (_, secureStorageService) => AuthSecureLocalDataSource(secureStorageService),
);
