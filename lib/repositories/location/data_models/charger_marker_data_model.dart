import 'package:freezed_annotation/freezed_annotation.dart';

part 'charger_marker_data_model.freezed.dart';
part 'charger_marker_data_model.g.dart';

@freezed
class ChargerMarkerDataModel with _$ChargerMarkerDataModel {
  const factory ChargerMarkerDataModel({
    @JsonKey(name: 'location_id') required String id,
    required String latitude,
    required String longitude,
  }) = _ChargerMarkerDataModel;

  factory ChargerMarkerDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChargerMarkerDataModelFromJson(json);
}
