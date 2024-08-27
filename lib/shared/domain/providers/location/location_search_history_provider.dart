import 'dart:developer';

import 'package:ev_charger/repositories/location_search_history/data_models/location_search_history_data_model.dart';
import 'package:ev_charger/shared/domain/providers/secure_storage_service_provider.dart';
import 'package:ev_charger/shared/domain/providers/user/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/location_search_history/location_search_history_repository_provider.dart';

final locationSearchHistoryProvider =
    FutureProvider.autoDispose<List<LocationSearchHistoryDataModel>>(
        (ref) async {
  final locationSearchHistoryRepository =
      ref.read(locationSearchHistoryRepositoryProvider);
  final userInfo = await ref.read(userProvider.future);
  final secureStorage = ref.read(secureStorageServiceProvider);
  var tokenData = await secureStorage.getToken();

  if (tokenData != null) {
    final histories =
        await locationSearchHistoryRepository.fetchLocationSearchHistoryData(
            tokenData.access_token, userInfo.userId!);
    log('history list: $histories');
    return histories;
  } else {
    return [];
  }
});
