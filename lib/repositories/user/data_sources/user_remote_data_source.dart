import 'package:ev_charger/shared/data/data_source/local/flutter_secure_storage/adapter/token.dart';
import 'package:ev_charger/shared/data/data_source/remote/postgresql/auth_agest_service.dart';

import '../data_models/user_data_model.dart';

abstract class UserDataSource {
  Future<UserDataModel?> fetchUser(String access_token);
}

class UserRemoteDataSource extends UserDataSource {
  final AuthAgestService authAgestService;
  UserRemoteDataSource(this.authAgestService);

  @override
  Future<UserDataModel?> fetchUser(String access_token) async {
    return await authAgestService.getMe(access_token);
  }
}
