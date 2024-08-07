import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:ev_charger/shared/domain/providers/local_storage_service_provider.dart';


final authProvider = FutureProvider<bool>((ref) async {
  final localStorage = ref.read(localStorageServiceProvider);

  final tokenData = await localStorage.getToken();
  if(tokenData.refreshToken == '') return false;

  try {
    Map<String, dynamic> decodedToken = Jwt.parseJwt(tokenData.refreshToken);
    DateTime expiryDate = DateTime.fromMillisecondsSinceEpoch(decodedToken['exp'] * 1000);
    DateTime now = DateTime.now();

    if (expiryDate.isAfter(now)) {
      return true;
    }
    return false;

  } catch (e) {
    print('Error during auth check: $e');
    return false;
  }
});
