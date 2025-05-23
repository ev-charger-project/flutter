import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/location/data_sources/location_remote_data_source.dart';
import '../../../data/data_source/remote/postgresql/agest_storage_service.dart';

final locationDataSourceProvider =
    Provider.family<LocationRemoteDataSource, AgestStorageService>(
  (_, networkService) => LocationRemoteDataSource(networkService),
);
