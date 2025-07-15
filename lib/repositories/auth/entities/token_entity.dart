import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../../../shared/data/data_source/local/flutter_secure_storage/adapter/token.dart';
import '../data_models/token_data_model.dart';

part 'token_entity.freezed.dart';
part 'token_entity.g.dart';

@freezed
class TokenEntity with _$TokenEntity {
  factory TokenEntity(
      {required String access_token, required String refresh_token}) = _Token;

  factory TokenEntity.fromJson(Map<String, dynamic> json) =>
      _$TokenEntityFromJson(json);
}

class TokenMapper with EntityConvertible<TokenEntity, TokenDataModel> {
  @override
  TokenDataModel fromEntity(TokenEntity entityObject) {
    return TokenDataModel(
        access_token: entityObject.access_token,
        refresh_token: entityObject.refresh_token);
  }

  @override
  TokenEntity toEntity(TokenDataModel dataModelObject) {
    return TokenEntity(
        access_token: dataModelObject.access_token,
        refresh_token: dataModelObject.refresh_token);
  }
}

class TokenLocalMapper with EntityConvertible<TokenEntity, TokenAdapterObject> {
  @override
  TokenAdapterObject fromEntity(TokenEntity entityObject) {
    return TokenAdapterObject(
        access_token: entityObject.access_token,
        refresh_token: entityObject.refresh_token);
  }

  @override
  TokenEntity toEntity(TokenAdapterObject dataModelObject) {
    return TokenEntity(
        access_token: dataModelObject.access_token,
        refresh_token: dataModelObject.refresh_token);
  }
}
