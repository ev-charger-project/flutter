import 'dart:developer';

import 'package:ev_charger/repositories/favourite/data_models/favourite_data_model.dart';
import 'package:ev_charger/shared/domain/providers/secure_storage_service_provider.dart';
import 'package:ev_charger/shared/domain/providers/user/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/user/user_info_repository_provider.dart';

final favProvider =
FutureProvider.autoDispose<List<FavouriteDataModel>>((ref) async {
  final userInfoRepository = ref.read(userInfoRepositoryProvider);
  final userInfo = await ref.read(userProvider.future);
  final secureStorage = ref.read(secureStorageServiceProvider);
  var tokenData = await secureStorage.getToken();

  if (tokenData != null) {
    final favs = await userInfoRepository.fetchFav(tokenData.access_token, userInfo.userId!);
    log('fav list: $favs');
    return favs;
  } else {
    return [];
  }
});
