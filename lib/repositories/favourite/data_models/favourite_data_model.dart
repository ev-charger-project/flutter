import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'favourite_data_model.freezed.dart';
part 'favourite_data_model.g.dart';

@freezed
class FavouriteDataModel with _$FavouriteDataModel {
  const factory FavouriteDataModel({
    @JsonKey(name: 'id') required String station_name,
    @JsonKey(name: 'location') required LocationDataModel favourite,
  }) = _Favourite;

  factory FavouriteDataModel.fromJson(Map<String, dynamic> json) =>
      _$FavouriteDataModelFromJson(json);
}