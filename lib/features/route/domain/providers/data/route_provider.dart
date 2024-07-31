import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../repositories/route/entities/route_entity.dart';
import '../../../presentation/providers/end_provider.dart';
import '../../../presentation/providers/start_provider.dart';
import 'route_repository_provider.dart';

final routeProvider = FutureProvider<RouteEntity>((ref) async {
  final routeRepository = ref.read(routeRepositoryProvider);
  final startLocation = ref.watch(startProvider);
  final endLocation = ref.watch(endProvider);

  final routeData = await routeRepository.fetchRoute(
    startLocation.latitude,
    startLocation.longitude,
    endLocation.latitude,
    endLocation.longitude,
  );
  return routeData;
});
