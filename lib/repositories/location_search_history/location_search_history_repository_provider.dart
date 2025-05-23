import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/domain/providers/remote_storage_service_provider.dart';
import 'location_search_history_data_source_provider.dart';
import 'location_search_history_repository_impl.dart';

final locationSearchHistoryRepositoryProvider =
    Provider<LocationSearchHistoryRepositoryImpl>((ref) {
  final storageService = ref.read(remoteStorageServiceProvider);

  final dataSource =
      ref.read(locationSearchHistoryDataSourceProvider(storageService));

  final repository = LocationSearchHistoryRepositoryImpl(dataSource);

  return repository;
});
