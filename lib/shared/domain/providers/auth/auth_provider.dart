import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthNotifier extends StateNotifier<bool> {
  AuthNotifier() : super(FirebaseAuth.instance.currentUser != null) {
    // Listen for auth state changes
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if(user != null) {
        state = true;
      } else {
        state = false;
      }
    });
  }
}

final authCheckProvider = StateNotifierProvider<AuthNotifier, bool>((ref) {
  return AuthNotifier();
});
