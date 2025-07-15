import 'entities/route_entity.dart';

abstract class RouteRepository {
  Future<RouteEntity> fetchRoute(double userLat, double userLong,
      double destinationLat, double destinationLong);
}
