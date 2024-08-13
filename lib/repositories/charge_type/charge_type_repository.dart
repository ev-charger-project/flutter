import 'entities/charge_type_entity.dart';

abstract class ChargeTypeRepository {
  Future<List<ChargeTypeEntity>> fetchChargeType();
}
