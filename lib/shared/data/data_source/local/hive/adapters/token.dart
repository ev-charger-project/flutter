import 'const.dart';
import 'package:hive/hive.dart';

part 'token.g.dart';

@HiveType(typeId: HiveConstants.tokenAdapterId)
class TokenAdapterObject extends HiveObject {
  TokenAdapterObject(this.accessToken, this.refreshToken);

  @HiveField(0)
  String accessToken;

  @HiveField(1)
  String refreshToken;

}
