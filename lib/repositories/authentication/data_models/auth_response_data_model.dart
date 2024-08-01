import 'package:ev_charger/repositories/authentication/data_models/token_data_model.dart';

import '../../user/data_models/user_data_model.dart';

class AuthResponseDataModel {
  final TokenDataModel tokenData;

  AuthResponseDataModel({required this.tokenData});
}
