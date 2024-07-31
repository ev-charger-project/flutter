import 'package:ev_charger/features/route/domain/providers/data/route_data_source_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../repositories/route/route_repository_impl.dart';
import '../../../../../shared/domain/providers/remote_storage_service_provider.dart';

final routeRepositoryProvider = Provider<RouteRepositoryImpl>((ref) {
  final storageService = ref.read(remoteStorageServiceProvider);
  final remoteDataSource = ref.read(routeRemoteDataSourceProvider(storageService));
  return RouteRepositoryImpl(remoteDataSource);
});
