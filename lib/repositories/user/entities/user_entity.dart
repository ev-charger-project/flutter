import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String userId,
    required String username,
    required String email,
    String? phoneNumber,
    List<String>? favorites,
  }) = _UserEntity;

}
