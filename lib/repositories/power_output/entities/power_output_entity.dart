import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../shared/core/mixins/entity_convertible.mixin.dart';
import '../data_models/power_output_data_model.dart';

part 'power_output_entity.freezed.dart';

@freezed
class PowerOutputEntity with _$PowerOutputEntity {
  const factory PowerOutputEntity({
    required int outputValue,
    required String chargingSpeed,
    required int voltage,
  }) = _PowerOutputEntity;
}

