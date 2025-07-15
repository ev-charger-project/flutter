import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../../location/entities/location_entity.dart';
import '../data_models/user_data_model.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    String? userId,
    String? username,
    String? email,
    List<LocationEntity>? favourites,
    String? phoneNumber,
  }) = _UserEntity;
}

class UserMapper with EntityConvertible<UserEntity, UserDataModel> {
  @override
  UserDataModel fromEntity(UserEntity entityObject) {
    return UserDataModel(
      userId: entityObject.userId,
      username: entityObject.username,
      email: entityObject.email,
      phoneNumber: entityObject.phoneNumber,
      favourites: entityObject.favourites != null
          ? LocationMapper().toModelList(entityObject.favourites!)
          : [],
    );
  }

  @override
  UserEntity toEntity(UserDataModel dataModelObject) {
    return UserEntity(
      userId: dataModelObject.userId,
      username: dataModelObject.username,
      email: dataModelObject.email,
      phoneNumber: dataModelObject.phoneNumber,
      favourites: dataModelObject.favourites != null
          ? LocationMapper().fromModelList(dataModelObject.favourites!)
          : [],
    );
  }
}
