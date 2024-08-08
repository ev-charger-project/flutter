import 'package:ev_charger/shared/data/data_source/remote/postgresql/auth_agest_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final authAgestServiceProvider = Provider<AuthAgestService>((ref) {
  return AuthAgestService();
});
