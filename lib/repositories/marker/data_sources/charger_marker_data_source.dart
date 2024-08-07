import 'package:ev_charger/repositories/marker/data_models/charger_marker_data_model.dart';

import '../../../shared/data/data_source/remote/remote_storage_service.dart';

abstract class MarkerDataSource {
  Future<List<ChargerMarkerDataModel>> fetchMarkers(
    double userLat,
    double userLong,
    double radius, [
    int? stationCount,
    List<String>? chargeType,
    int? outputMin,
    int? outputMax,
  ]);
}

class MarkerRemoteDataSource extends MarkerDataSource {
  MarkerRemoteDataSource(this.remoteStorageService);

  final RemoteStorageService remoteStorageService;

  @override
  Future<List<ChargerMarkerDataModel>> fetchMarkers(
      double userLat, double userLong, double radius,
      [int? stationCount,
      List<String>? chargeType,
      int? outputMin,
      int? outputMax]) async {
    return await remoteStorageService.fetchMarker(
      userLat,
      userLong,
      radius,
      stationCount,
      chargeType,
      outputMin,
      outputMax,
    );
  }
}
