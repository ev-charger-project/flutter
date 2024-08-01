import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../shared/data/data_source/remote/firebase/firebase_storage_service.dart';
import '../data_models/user_data_model.dart';

abstract class UserDataSource {
  Future<UserDataModel> fetchUser();
  Future<bool> saveUser({required UserDataModel user});
  Future<bool> deleteUser();
  Future<bool> hasUser();
}

class UserRemoteDataSource extends UserDataSource {
  UserRemoteDataSource(this.remoteStorageService);

  final FirebaseRemoteStorageService remoteStorageService;

  @override
  Future<UserDataModel> fetchUser() async {
    try {
      User? currentUser = FirebaseAuth.instance.currentUser;
      print('current user: ${currentUser?.uid}');
      if (currentUser == null) {
        throw Exception(
            'No user is currently signed in'
        );
      }
      final userData = await remoteStorageService.fetchUser(currentUser.uid);
      if (userData == null) {
        throw Exception(
            'UserDataModel not found'
        );
      }
      return UserDataModel(
        userId: userData.userId,
        username: userData.username,
        email: userData.email,
      );
    } catch (e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }

  @override
  Future<bool> saveUser({required UserDataModel user}) async {

    try {
      final userData = UserDataModel(
        userId: user.userId,
        username: user.username,
        email: user.email
      );
      return await remoteStorageService.createUser(userData);
    } catch (e) {
      print('Error saving user: $e');
      return false;
    }
  }

  @override
  Future<bool> deleteUser() async {
    try {
      User? currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {

        throw Exception(
          'No user is currently signed in',
        );
      }
      return await remoteStorageService.deleteUser(currentUser.uid);
    } catch (e) {
      print('Error deleting user: $e');
      return false;
    }
  }

  @override
  Future<bool> hasUser() async {
    try {
      User? currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {
        return false;
      }
      final userExists = await remoteStorageService.fetchUser(currentUser.uid);
      return userExists != null;
    } catch (e) {
      print('Error checking if user exists: $e');
      return false;
    }
  }
}
