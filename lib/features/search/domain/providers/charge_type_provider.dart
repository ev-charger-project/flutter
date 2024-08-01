import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../repositories/charge_type/entities/charge_type_entity.dart';
import 'charge_type_repository_provider.dart';

final chargeTypeProvider = FutureProvider<List<ChargeTypeEntity>>((ref) async {
  final chargeTypeRepository = ref.read(chargeTypeRepositoryProvider);
  final chargeTypesData = await chargeTypeRepository.fetchChargeType();
  return chargeTypesData;
});
