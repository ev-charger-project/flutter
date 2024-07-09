import 'const.dart';
import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: HiveConstants.userAdapterId)
class UserAdapterObject extends HiveObject {
  UserAdapterObject(this.userId, this.username, this.email, this.phoneNumber);

  @HiveField(0)
  int userId;
  @HiveField(1)
  String username;
  @HiveField(2)
  String email;
  @HiveField(3)
  String? phoneNumber;
}
