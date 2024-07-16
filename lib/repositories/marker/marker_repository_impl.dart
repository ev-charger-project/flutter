

import 'package:ev_charger/repositories/marker/entities/charger_marker_entity.dart';

import 'data_sources/charger_marker_data_source.dart';
import 'marker_repository.dart';

class MarkerRepositoryImpl extends MarkerRepository {
  MarkerRepositoryImpl(this.remoteDataSource);
  final MarkerRemoteDataSource remoteDataSource;

  @override
  Future<List<ChargerMarkerEntity>> fetchMarkers(double userLat, double userLong, double radius) async {
    final markerDataModelResult = await remoteDataSource.fetchMarkers(userLat,userLong,radius);
    final result = MarkerMapper().toEntityList(markerDataModelResult);
    return result;
  }




}
