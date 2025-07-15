import 'package:ev_charger/repositories/marker/data_models/charger_marker_data_model.dart';

import '../../../shared/data/data_source/remote/remote_storage_service.dart';

abstract class MarkerDataSource {
  Future<List<ChargerMarkerDataModel>> fetchMarkers(
    double screenCenterLat,
    double screenCenterLong,
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
      double screenCenterLat, double screenCenterLong, double radius,
      [int? stationCount,
      List<String>? chargeType,
      int? outputMin,
      int? outputMax,
      List<String>? amenities]) async {
    return await remoteStorageService.fetchMarker(
      screenCenterLat,
      screenCenterLong,
      radius,
      stationCount,
      chargeType,
      outputMin,
      outputMax,
      amenities,
    );
  }
}
