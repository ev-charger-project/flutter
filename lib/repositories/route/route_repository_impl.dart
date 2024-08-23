import 'route_repository.dart';
import 'data_sources/route_remote_data_source.dart';
import 'entities/route_entity.dart';

class RouteRepositoryImpl extends RouteRepository {
  RouteRepositoryImpl(this.remoteDataSource);

  final RouteRemoteDataSource remoteDataSource;

  @override
  Future<RouteEntity> fetchRoute(double userLat, double userLong, double destinationLat, double destinationLong) async {
    final routeDataModel = await remoteDataSource.fetchRoute(userLat, userLong, destinationLat, destinationLong);
    final routeEntity = RouteMapper().toEntity(routeDataModel);
    return routeEntity;
  }
}
