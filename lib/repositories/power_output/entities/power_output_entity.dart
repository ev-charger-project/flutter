import 'package:freezed_annotation/freezed_annotation.dart';
part 'power_output_entity.freezed.dart';

@freezed
class PowerOutputEntity with _$PowerOutputEntity {
  const factory PowerOutputEntity({
    required double outputValue,
    required String chargingSpeed,
    required double voltage,
  }) = _PowerOutputEntity;
}
