import 'package:ev_charger/shared/domain/providers/auth_agest_service_provider.dart';
import 'package:ev_charger/shared/domain/providers/user/user_data_source_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/user/user_repository_impl.dart';


final userRepositoryProvider = Provider<UserRepositoryImpl>((ref) {
  final authService = ref.read(authAgestServiceProvider);

  final dataSource = ref.read(userDataSourceProvider(authService));

  final repository = UserRepositoryImpl(dataSource);

  return repository;
});
