import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../repositories/marker/marker_repository_impl.dart';
import '../../../../../shared/domain/providers/remote_storage_service_provider.dart';
import 'marker_data_source_provider.dart';

final markerRepositoryProvider = Provider<MarkerRepositoryImpl>((ref) {
  final storageService = ref.read(remoteStorageServiceProvider);
  final remoteDataSource = ref.read(markerRemoteDataSourceProvider(storageService));
  return MarkerRepositoryImpl(remoteDataSource);
});
