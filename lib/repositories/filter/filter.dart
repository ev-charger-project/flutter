import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

@freezed
class FilterEntity with _$FilterEntity {
  const factory FilterEntity({
    required int? station_count,
    required List<String> charge_type,
    required int output_min,
    required int output_max,
    required List<String> amenities,
  }) = _FilterEntity;
}
