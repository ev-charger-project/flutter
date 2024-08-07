import 'package:freezed_annotation/freezed_annotation.dart';
import '../../location/data_models/location_data_model.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
class UserDataModel with _$UserDataModel {
  const factory UserDataModel({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'favourites') List<LocationDataModel>? favourites,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
