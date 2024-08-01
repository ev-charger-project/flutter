import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_user_request_data_model.freezed.dart';
part 'register_user_request_data_model.g.dart';

@freezed
class RegisterUserRequestDataModel with _$RegisterUserRequestDataModel {
  factory RegisterUserRequestDataModel({
    @Default('') email,
    @Default('') password,
  }) = _RegisterUserRequestDataModel;

  factory RegisterUserRequestDataModel.fromJson(dynamic json) =>
      _$RegisterUserRequestDataModelFromJson(json);
}
