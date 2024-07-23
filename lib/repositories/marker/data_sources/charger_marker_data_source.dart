import 'package:ev_charger/repositories/marker/data_models/charger_marker_data_model.dart';

import '../../../shared/data/data_source/remote/remote_storage_service.dart';

abstract class MarkerDataSource {
  Future<List<ChargerMarkerDataModel>> fetchMarkers(
      double userLat, double userLong, double radius);
}

class MarkerRemoteDataSource extends MarkerDataSource {
  MarkerRemoteDataSource(this.remoteStorageService);
  final RemoteStorageService remoteStorageService;

  @override
  Future<List<ChargerMarkerDataModel>> fetchMarkers(
      double userLat, double userLong, double radius) async {
    return await remoteStorageService.fetchMarker(userLat, userLong, radius);
  }
}
