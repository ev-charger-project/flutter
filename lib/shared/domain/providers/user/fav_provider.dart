import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/location/entities/location_entity.dart';
import '../../../../repositories/user/user_info_repository_provider.dart';

final favProvider =
FutureProvider.autoDispose<List<LocationEntity>>((ref) async {
  final userRepository = ref.read(userInfoRepositoryProvider);
  // final user = ref.watch();
  return await userRepository.fetchFav('token', 'id');
});
