import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../../repositories/user/data_models/user_data_model.dart';
import '../auth_storage_service.dart';

class FirebaseRemoteStorageService implements AuthService {

  @override
  Future<bool> createUser(UserDataModel user) async {
    try {
      User? currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser != null) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(currentUser.uid)
            .set(user.toJson());
        return true;
      }
      return false;
    } catch (e) {
      print('Error creating user: $e');
      return false;
    }
  }

  @override
  Future<UserDataModel?> fetchUser(String uid) async {
    try {
      DocumentSnapshot doc =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();
      if (doc.exists) {
        print("Returning user from database");
        return UserDataModel.fromJson(doc.data() as Map<String, dynamic>);
      }
      return null;
    } catch (e) {
      print('Error fetching user: $e');
      return null;
    }
  }

  @override
  Future<bool> deleteUser(String uid) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(uid).delete();
      return true;
    } catch (e) {
      print('Error deleting user: $e');
      return false;
    }
  }
}
