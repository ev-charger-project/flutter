import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../../../shared/data/data_source/local/hive/adapters/token.dart';
import '../data_models/token_data_model.dart';

part 'token_entity.freezed.dart';
part 'token_entity.g.dart';

@freezed
class TokenEntity with _$Token {
  factory TokenEntity({required String accessToken, required String refreshToken}) = _Token;

  factory TokenEntity.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}

class TokenMapper with EntityConvertible<TokenEntity, TokenDataModel> {
  @override
  TokenDataModel fromEntity(TokenEntity entityObject) {
    return TokenDataModel(accessToken: entityObject.accessToken, refreshToken: entityObject.refreshToken);
  }

  @override
  TokenEntity toEntity(TokenDataModel dataModelObject) {
    return TokenEntity(accessToken: dataModelObject.accessToken, refreshToken: dataModelObject.refreshToken);
  }
}

class TokenLocalMapper with EntityConvertible<TokenEntity, TokenAdapterObject> {
  @override
  TokenAdapterObject fromEntity(TokenEntity entityObject) {
    return TokenAdapterObject(entityObject.accessToken, entityObject.refreshToken);
  }

  @override
  TokenEntity toEntity(TokenAdapterObject dataModelObject) {
    return TokenEntity(accessToken: dataModelObject.accessToken, refreshToken: dataModelObject.refreshToken);
  }
}
