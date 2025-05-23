import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../repositories/charge_type/data_sources/charge_type_remote_data_source.dart';
import '../../../../shared/data/data_source/remote/remote_storage_service.dart';

final chargeTypeRemoteDataSourceProvider =
    Provider.family<ChargeTypeRemoteDataSource, RemoteStorageService>(
        (_, networkService) => ChargeTypeRemoteDataSource(networkService));
