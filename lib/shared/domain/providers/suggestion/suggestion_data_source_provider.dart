import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/suggestion/data_sources/suggestion_remote_data_source.dart';
import '../../../data/data_source/remote/remote_storage_service.dart';

final suggestionRemoteDataSourceProvider =
    Provider.family<SuggestionRemoteDataSource, RemoteStorageService>(
        (_, networkService) => SuggestionRemoteDataSource(networkService));
