import 'package:freezed_annotation/freezed_annotation.dart';
import '../../features/search/presentation/widgets/charge_type_object.dart';

part 'filter.freezed.dart';

@freezed
class FilterEntity with _$FilterEntity {
  const factory FilterEntity({
    required int station_count,
    required List<String> charge_type,
    required int output_min,
    required int output_max,
  }) = _FilterEntity;
}
