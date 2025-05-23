import 'package:ev_charger/shared/domain/providers/remote_storage_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../repositories/charger/charger_repository_impl.dart';
import 'charger_data_source_provider.dart';

final chargerRepositoryProvider = Provider<ChargerRepositoryImpl>((ref) {
  final storageService = ref.read(remoteStorageServiceProvider);

  final dataSource = ref.read(chargerDataSourceProvider(storageService));

  final repository = ChargerRepositoryImpl(dataSource);

  return repository;
});
