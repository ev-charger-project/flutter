

import 'package:ev_charger/repositories/marker/entities/charger_marker_entity.dart';

import 'data_sources/charger_marker_data_source.dart';
import 'marker_repository.dart';

class MarkerRepositoryImpl extends MarkerRepository {
  MarkerRepositoryImpl(this.remoteDataSource);
  final MarkerRemoteDataSource remoteDataSource;

  @override
  Future<List<ChargerMarkerEntity>> fetchMarkers(int radius) async {
    final markerDataModelResult = await remoteDataSource.fetchMarkers(radius);
    final result = MarkerMapper().toEntityList(markerDataModelResult);
    return result;
  }




}
