import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../repositories/marker/data_sources/charger_marker_data_source.dart';
import '../../../../../shared/data/data_source/remote/remote_storage_service.dart';

final markerRemoteDataSourceProvider = Provider.family <MarkerRemoteDataSource, RemoteStorageService>(
        (_, networkService) =>
  MarkerRemoteDataSource(networkService));

