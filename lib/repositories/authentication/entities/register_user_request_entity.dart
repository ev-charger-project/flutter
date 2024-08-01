import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../data_models/register_user_request_data_model.dart';

part 'register_user_request_entity.freezed.dart';
part 'register_user_request_entity.g.dart';

@freezed
class RegisterUserRequest with _$RegisterUserRequest {
  factory RegisterUserRequest({
    @Default('') email,
    @Default('') password,
  }) = _RegisterUserRequest;

  factory RegisterUserRequest.fromJson(dynamic json) =>
      _$RegisterUserRequestFromJson(json);
}

class RegisterUserRequestMapper
    with EntityConvertible<RegisterUserRequest, RegisterUserRequestDataModel> {
  @override
  RegisterUserRequestDataModel fromEntity(RegisterUserRequest entityObject) {
    return RegisterUserRequestDataModel(
        password: entityObject.password, email: entityObject.email);
  }

  @override
  RegisterUserRequest toEntity(RegisterUserRequestDataModel dataModelObject) {
    return RegisterUserRequest(
        password: dataModelObject.password, email: dataModelObject.email);
  }
}
