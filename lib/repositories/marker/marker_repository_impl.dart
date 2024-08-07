import 'package:ev_charger/repositories/marker/entities/charger_marker_entity.dart';

import 'data_sources/charger_marker_data_source.dart';
import 'marker_repository.dart';

class MarkerRepositoryImpl extends MarkerRepository {
  MarkerRepositoryImpl(this.remoteDataSource);

  final MarkerRemoteDataSource remoteDataSource;

  @override
  Future<List<ChargerMarkerEntity>> fetchMarkers(
      double userLat, double userLong, double radius,
      [int? stationCount,
      List<String>? chargeType,
      int? outputMin,
      int? outputMax]) async {
    final markerDataModelResult = await remoteDataSource.fetchMarkers(
      userLat,
      userLong,
      radius,
      stationCount ?? 0,
      chargeType ?? [],
      outputMin ?? 0,
      outputMax ?? 360,
    );
    final result = MarkerMapper().toEntityList(markerDataModelResult);
    return result;
  }
}
