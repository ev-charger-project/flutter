import '../data_models/user_data_model.dart';

abstract class UserDataSource {
  Future<UserDataModel> fetchUser();
  Future<bool> saveUser({required UserDataModel user});
  Future<bool> deleteUser();
  // Future<List<String>> fetchUserBookmark();
}
