import 'package:ev_charger/repositories/location/location_repository_impl.dart';
import 'package:ev_charger/shared/domain/providers/remote_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'charger_data_source_provider.dart';




final locationRepositoryProvider = Provider<LocationRepositoryImpl>((ref) {
  final storageService = ref.read(remoteStorageServiceProvider);

  final dataSource = ref.read(locationDataSourceProvider(storageService));

  final repository = LocationRepositoryImpl(dataSource);

  return repository;
});