import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user_request_data_model.freezed.dart';
part 'login_user_request_data_model.g.dart';

@freezed
class LoginUserRequestDataModel with _$LoginUserRequestDataModel {
  factory LoginUserRequestDataModel({
    @Default('') email,
    @Default('') password,
  }) = _LoginUserRequestDataModel;

  factory LoginUserRequestDataModel.fromJson(dynamic json) =>
      _$LoginUserRequestDataModelFromJson(json);
}
