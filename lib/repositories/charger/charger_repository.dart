
import 'package:ev_charger/repositories/charger/entities/charger_entity.dart';

abstract class ChargerRepository {
  Future<List<List<ChargerEntity>>> fetchChargersFromLocation(String locationId) ;
}
