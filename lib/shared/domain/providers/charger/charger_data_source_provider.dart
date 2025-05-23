import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../repositories/charger/data_sources/charger_remote_data_source.dart';
import '../../../data/data_source/remote/postgresql/agest_storage_service.dart';

final chargerDataSourceProvider =
    Provider.family<ChargerRemoteDataSource, AgestStorageService>(
  (_, networkService) => ChargerRemoteDataSource(networkService),
);
