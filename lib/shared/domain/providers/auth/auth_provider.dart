import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decode/jwt_decode.dart';
import '../secure_storage_service_provider.dart';

final authProvider = StreamProvider<bool>((ref) {
  final secureStorage = ref.watch(secureStorageServiceProvider);
  return secureStorage.tokenStream.map((token) {
    if (token == null ||
        token.access_token.isEmpty ||
        token.refresh_token.isEmpty) return false;
    try {
      Map<String, dynamic> decodedToken = Jwt.parseJwt(token.access_token);
      DateTime expiryDate =
          DateTime.fromMillisecondsSinceEpoch(decodedToken['exp'] * 1000);
      DateTime now = DateTime.now();

      return expiryDate.isAfter(now);
    } catch (e) {
      log('Error during auth check: $e');
      return false;
    }
  });
});
