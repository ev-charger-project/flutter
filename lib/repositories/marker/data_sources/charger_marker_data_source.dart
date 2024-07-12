import 'package:ev_charger/repositories/marker/data_models/charger_marker_data_model.dart';

import '../../../shared/data/data_source/remote/remote_storage_service.dart';

abstract class MarkerDataSource {
  Future<List<ChargerMarkerDataModel>> fetchMarkers(int radius);
}
class MarkerRemoteDataSource extends MarkerDataSource {
  MarkerRemoteDataSource(this.remoteStorageService);
  final RemoteStorageService remoteStorageService;


  @override
  Future<List<ChargerMarkerDataModel>> fetchMarkers(int radius) async{
    return await remoteStorageService.fetchMarker(radius);
  }
}