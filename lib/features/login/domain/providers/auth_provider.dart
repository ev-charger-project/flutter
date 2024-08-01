import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/authentication/authentication_repository_impl.dart';
import '../../../../repositories/authentication/data_sources/auth_local_data_source.dart';
import '../../../../repositories/authentication/data_sources/auth_remote_data_source.dart';
import '../../../../shared/data/data_source/local/hive/hive_storage_service.dart';
import '../../../../shared/domain/providers/local_storage_service_provider.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final authRemoteDataSourceProvider = Provider<AuthFirebaseRemoteDataSource>((ref) {
  final FirebaseAuth firebaseAuth = ref.watch(firebaseAuthProvider);
  return AuthFirebaseRemoteDataSource(firebaseAuth);
});

final authLocalDataSourceProvider = Provider<AuthLocalDataSource>((ref) {
  final HiveStorageService storageService = ref.watch(localStorageServiceProvider);
  return AuthHiveLocalDataSource(storageService);
});

final authRepositoryProvider = Provider<AuthenticationRepositoryImpl>(
  (ref) {
    final AuthFirebaseRemoteDataSource authRemoteDataSource =
        ref.watch(authRemoteDataSourceProvider);
    final AuthLocalDataSource authLocalDataSource =
        ref.watch(authLocalDataSourceProvider);
    return AuthenticationRepositoryImpl(
        authRemoteDataSource, authLocalDataSource);
  },
);
