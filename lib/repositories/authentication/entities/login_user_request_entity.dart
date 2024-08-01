import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../data_models/login_user_request_data_model.dart';

part 'login_user_request_entity.freezed.dart';
part 'login_user_request_entity.g.dart';

@freezed
class LoginUserRequest with _$LoginUserRequest {
  factory LoginUserRequest({
    @Default('') email,
    @Default('') password,
  }) = _LoginUserRequest;

  factory LoginUserRequest.fromJson(dynamic json) =>
      _$LoginUserRequestFromJson(json);
}

class LoginUserRequestMapper
    with EntityConvertible<LoginUserRequest, LoginUserRequestDataModel> {
  @override
  LoginUserRequestDataModel fromEntity(LoginUserRequest entityObject) {
    return LoginUserRequestDataModel(
        password: entityObject.password, email: entityObject.email);
  }

  @override
  LoginUserRequest toEntity(LoginUserRequestDataModel dataModelObject) {
    return LoginUserRequest(
        password: dataModelObject.password, email: dataModelObject.email);
  }
}
