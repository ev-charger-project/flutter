import 'const.dart';
import 'package:hive/hive.dart';

part 'token.g.dart';

@HiveType(typeId: HiveConstants.tokenAdapterId)
class TokenAdapterObject extends HiveObject {
  TokenAdapterObject(this.access_token, this.refresh_token);

  @HiveField(0)
  String access_token;

  @HiveField(1)
  String refresh_token;
}
