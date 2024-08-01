import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../../../shared/data/data_source/local/hive/adapters/token.dart';
import '../data_models/token_data_model.dart';

part 'token_entity.freezed.dart';
part 'token_entity.g.dart';

@freezed
class Token with _$Token {
  factory Token({required String accessToken, required String refreshToken}) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}

class TokenMapper with EntityConvertible<Token, TokenDataModel> {
  @override
  TokenDataModel fromEntity(Token entityObject) {
    return TokenDataModel(accessToken: entityObject.accessToken, refreshToken: entityObject.refreshToken);
  }

  @override
  Token toEntity(TokenDataModel dataModelObject) {
    return Token(accessToken: dataModelObject.accessToken, refreshToken: dataModelObject.refreshToken);
  }
}

class TokenLocalMapper with EntityConvertible<Token, TokenAdapterObject> {
  @override
  TokenAdapterObject fromEntity(Token entityObject) {
    return TokenAdapterObject(entityObject.accessToken, entityObject.refreshToken);
  }

  @override
  Token toEntity(TokenAdapterObject dataModelObject) {
    return Token(accessToken: dataModelObject.accessToken, refreshToken: dataModelObject.refreshToken);
  }
}
