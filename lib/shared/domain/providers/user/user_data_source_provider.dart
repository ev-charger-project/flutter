import 'package:ev_charger/shared/data/data_source/remote/postgresql/auth_agest_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/user/data_sources/user_remote_data_source.dart';

final userDataSourceProvider =
    Provider.family<UserRemoteDataSource, AuthAgestService>(
  (_, networkService) => UserRemoteDataSource(networkService),
);
