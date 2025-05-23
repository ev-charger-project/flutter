import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_data_model.freezed.dart';
part 'token_data_model.g.dart';

@freezed
class TokenDataModel with _$TokenDataModel {
  factory TokenDataModel({
    required String access_token,
    required String refresh_token,
  }) = _TokenDataModel;

  factory TokenDataModel.fromJson(Map<String, dynamic> json) =>
      _$TokenDataModelFromJson(json);
}
