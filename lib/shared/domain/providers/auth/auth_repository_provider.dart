import 'package:ev_charger/repositories/auth/auth_repository_impl.dart';
import 'package:ev_charger/shared/domain/providers/auth_agest_service_provider.dart';
import 'package:ev_charger/shared/domain/providers/local_storage_service_provider.dart';
import 'package:ev_charger/shared/domain/providers/secure_storage_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_data_source_provider.dart';


final authRepositoryProvider = Provider<AuthRepositoryImpl>((ref) {
  final authAgestService = ref.read(authAgestServiceProvider);
  final remoteDataSource = ref.read(authRemoteDataSourceProvider(authAgestService));

  final secureStorageService = ref.read(secureStorageServiceProvider);
  final localDataSource = ref.read(authLocalDataSourceProvider(secureStorageService));

  final repository = AuthRepositoryImpl(remoteDataSource, localDataSource);

  return repository;
});
