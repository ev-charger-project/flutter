import 'package:ev_charger/shared/domain/providers/suggestion/suggestion_data_source_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/suggestion/suggestion_repository_impl.dart';
import '../remote_storage_service_provider.dart';

final suggestionRepositoryProvider = Provider<SuggestionRepositoryImpl>((ref) {
  final storageService = ref.read(remoteStorageServiceProvider);
  final remoteDataSource =
      ref.read(suggestionRemoteDataSourceProvider(storageService));
  return SuggestionRepositoryImpl(remoteDataSource);
});
