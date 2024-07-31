import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../repositories/charge_type/data_sources/charge_type_remote_data_source.dart';
import '../../../../../repositories/route/data_sources/route_remote_data_source.dart';
import '../../../../../shared/data/data_source/remote/remote_storage_service.dart';

final routeRemoteDataSourceProvider =
Provider.family<RouteRemoteDataSource, RemoteStorageService>(
        (_, networkService) => RouteRemoteDataSource(networkService));