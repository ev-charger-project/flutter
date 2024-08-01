import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data_source/remote/firebase/firebase_storage_service.dart';

final authStorageServiceProvider = Provider((ref) {
  final FirebaseRemoteStorageService remoteStorageService =
  FirebaseRemoteStorageService();

  return remoteStorageService;
});
