import 'package:ev_charger/repositories/user/entities/user_entity.dart';
import 'package:ev_charger/shared/domain/providers/auth/auth_repository_provider.dart';
import 'package:ev_charger/shared/domain/providers/user/user_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decode/jwt_decode.dart';

import '../secure_storage_service_provider.dart';

final userProvider = FutureProvider.autoDispose<UserEntity>((ref) async {
  final userRepository = ref.watch(userRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final secureStorage = ref.watch(secureStorageServiceProvider);
  final tokenData = await secureStorage.getToken();

  Map<String, dynamic> decodedToken = Jwt.parseJwt(tokenData!.access_token);
  DateTime expiryDate =
      DateTime.fromMillisecondsSinceEpoch(decodedToken['exp'] * 1000);
  DateTime now = DateTime.now();
  if (expiryDate.isBefore(now)) {
    final newToken = await authRepository.refreshToken(tokenData.refresh_token);
    final data = await userRepository.fetchUser(newToken.access_token);
    print('Token expired, refreshed token: ${newToken.access_token}');
    print('User data fetched: ${data.username}, ${data.email}');
    return data;
  }

  final data = await userRepository.fetchUser(tokenData.access_token);
  print('User data fetched: ${data.username}, ${data.email}');
  return data;
});
