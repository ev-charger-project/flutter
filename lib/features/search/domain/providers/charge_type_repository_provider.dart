import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../shared/domain/providers/remote_storage_service_provider.dart';
import '../../../../repositories/charge_type/charge_type_repository_impl.dart';
import 'charge_type_remote_data_source_provider.dart';

final chargeTypeRepositoryProvider = Provider<ChargeTypeRepositoryImpl>((ref) {
  final storageService = ref.read(remoteStorageServiceProvider);
  final remoteDataSource =
  ref.read(chargeTypeRemoteDataSourceProvider(storageService));
  return ChargeTypeRepositoryImpl(remoteDataSource);
});
