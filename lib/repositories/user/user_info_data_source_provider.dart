import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/data/data_source/remote/postgresql/agest_storage_service.dart';
import 'data_sources/user_info_data_source.dart';

final userInfoDataSourceProvider =
Provider.family<UserInfoRemoteDataSource, AgestStorageService>(
      (_, networkService) => UserInfoRemoteDataSource(networkService),
);
