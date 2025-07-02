import 'package:freezed_annotation/freezed_annotation.dart';
part 'power_output_entity.freezed.dart';

@freezed
class PowerOutputEntity with _$PowerOutputEntity {
  const factory PowerOutputEntity({
    required double outputValue,
    required double voltage,
    required double amperage,
    String? chargingSpeed,
    String? description,
  }) = _PowerOutputEntity;
}
