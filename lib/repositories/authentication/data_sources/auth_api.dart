import 'package:firebase_auth/firebase_auth.dart';

import '../data_models/auth_response_data_model.dart';
import '../data_models/token_data_model.dart';

class AuthApi {
  final FirebaseAuth _firebaseAuth;

  AuthApi(this._firebaseAuth);

  Future<AuthResponseDataModel> login(String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;
      if (user != null) {
        String? idToken = await user.getIdToken();
        String? refreshToken = user.refreshToken;
        TokenDataModel tokenData =
            TokenDataModel(accessToken: idToken ?? "", refreshToken: refreshToken ?? "");
        return AuthResponseDataModel(tokenData: tokenData);
      } else {
        throw Exception("User not found");
      }
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<AuthResponseDataModel> register(String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;
      if (user != null) {
        String? idToken = await user.getIdToken();
        String? refreshToken = user.refreshToken;
        TokenDataModel tokenData =
            TokenDataModel(accessToken: idToken ?? "", refreshToken: refreshToken ?? "");
        return AuthResponseDataModel(tokenData: tokenData);
      } else {
        throw Exception("User not found");
      }
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<void> logout() async {
    try {
      await _firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception("An unknown error occurred during logout");
    }
  }
}
