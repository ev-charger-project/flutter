import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/user/data_sources/user_remote_data_source.dart';
import '../../../../repositories/user/user_repository_impl.dart';
import '../../../data/data_source/remote/firebase/firebase_storage_service.dart';
import '../auth_storage_service_provider.dart';


final userDataSourceProvider =
    Provider.family<UserRemoteDataSource, FirebaseRemoteStorageService>(
  (_, networkService) => UserRemoteDataSource(networkService),
);

final userRemoteRepositoryProvider = Provider<UserRepositoryImpl>((ref) {
  final storageService = ref.watch(authStorageServiceProvider);

  final dataSource = ref.watch(userDataSourceProvider(storageService));

  final repository = UserRepositoryImpl(dataSource);

  return repository;
});
