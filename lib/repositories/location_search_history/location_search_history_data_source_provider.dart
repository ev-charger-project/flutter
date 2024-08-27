import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/data/data_source/remote/postgresql/agest_storage_service.dart';
import 'data_sources/location_search_history_remote_data_source.dart';

final locationSearchHistoryDataSourceProvider =
    Provider.family<LocationSearchHistoryRemoteDataSource, AgestStorageService>(
  (_, networkService) => LocationSearchHistoryRemoteDataSource(networkService),
);
