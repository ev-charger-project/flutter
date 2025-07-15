import '../../../shared/data/data_source/remote/remote_storage_service.dart';
import '../data_models/route_data_model.dart';

abstract class RouteDataSource {
  Future<RouteDataModel> fetchRoute(double userLat, double userLong,
      double destinationLat, double destinationLong);
}

class RouteRemoteDataSource extends RouteDataSource {
  RouteRemoteDataSource(this.remoteStorageService);
  final RemoteStorageService remoteStorageService;

  @override
  Future<RouteDataModel> fetchRoute(double userLat, double userLong,
      double destinationLat, double destinationLong) async {
    final data = await remoteStorageService.fetchRoute(
        userLat, userLong, destinationLat, destinationLong);
    return data;
  }
}
