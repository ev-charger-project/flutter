import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

final authCheckProvider = Provider<bool>( (ref){
  final auth = FirebaseAuth.instance;
  final user = auth.currentUser;
  if(user != null) {
    return true;
  }
  return false;
});

