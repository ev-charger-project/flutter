import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable()
class TokenAdapterObject {
  final String access_token;

  final String refresh_token;

  TokenAdapterObject({
    required this.access_token,
    required this.refresh_token,
  });

  factory TokenAdapterObject.fromJson(Map<String, dynamic> json) => _$TokenAdapterObjectFromJson(json);

  Map<String, dynamic> toJson() => _$TokenAdapterObjectToJson(this);
}
