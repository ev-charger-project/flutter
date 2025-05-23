import 'package:ev_charger/repositories/user/user_info_data_source_provider.dart';
import 'package:ev_charger/repositories/user/user_info_repo_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/domain/providers/remote_storage_service_provider.dart';

final userInfoRepositoryProvider = Provider<UserInfoRepositoryImpl>((ref) {
  final storageService = ref.read(remoteStorageServiceProvider);

  final dataSource = ref.read(userInfoDataSourceProvider(storageService));

  final repository = UserInfoRepositoryImpl(dataSource);

  return repository;
});
