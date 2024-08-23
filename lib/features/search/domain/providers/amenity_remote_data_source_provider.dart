import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../repositories/amenity/data_sources/amenity_remote_data_source.dart';
import '../../../../shared/data/data_source/remote/remote_storage_service.dart';

final amenityRemoteDataSourceProvider =
    Provider.family<AmenityRemoteDataSource, RemoteStorageService>(
        (_, networkService) => AmenityRemoteDataSource(networkService));
