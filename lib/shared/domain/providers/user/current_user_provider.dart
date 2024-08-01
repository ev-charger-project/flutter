import 'package:ev_charger/repositories/user/entities/user_entity.dart';
import 'package:ev_charger/shared/domain/providers/user/user_cache_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final currentUserProvider = FutureProvider<UserEntity>((ref) async {
  final repository = ref.watch(userRemoteRepositoryProvider);
  final currentUser = await repository.fetchUser();
  return currentUser;
});
