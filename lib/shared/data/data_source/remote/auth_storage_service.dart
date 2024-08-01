import 'dart:io';

import '../../../../repositories/user/data_models/user_data_model.dart';


abstract class AuthStorageService {
  Future<bool> createUser(UserDataModel user);

  Future<UserDataModel?> fetchUser(String uid);

  deleteUser(String uid) {}
}
