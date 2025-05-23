import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../shared/domain/providers/remote_storage_service_provider.dart';
import '../../../../repositories/amenity/amenity_repository_impl.dart';
import 'amenity_remote_data_source_provider.dart';

final amenityRepositoryProvider = Provider<AmenityRepositoryImpl>((ref) {
  final storageService = ref.read(remoteStorageServiceProvider);
  final remoteDataSource =
      ref.read(amenityRemoteDataSourceProvider(storageService));
  return AmenityRepositoryImpl(remoteDataSource);
});
