import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../entities/user_entity.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'favorites') List<String>? favorites,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

class UserMapper with EntityConvertible<UserEntity, User> {
  @override
  User fromEntity(UserEntity entityObject) {
    return User(
      userId: entityObject.userId,
      username: entityObject.username,
      email: entityObject.email,
      phoneNumber: entityObject.phoneNumber,
      favorites: entityObject.favorites,
    );
  }

  @override
  UserEntity toEntity(User dataModelObject) {
    return UserEntity(
      userId: dataModelObject.userId,
      username: dataModelObject.username,
      email: dataModelObject.email,
      phoneNumber: dataModelObject.phoneNumber,
      favorites: dataModelObject.favorites,
    );
  }
}
