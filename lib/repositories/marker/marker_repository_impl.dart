import 'package:ev_charger/repositories/marker/entities/charger_marker_entity.dart';

import 'data_sources/charger_marker_data_source.dart';
import 'marker_repository.dart';

class MarkerRepositoryImpl extends MarkerRepository {
  MarkerRepositoryImpl(this.remoteDataSource);

  final MarkerRemoteDataSource remoteDataSource;

  @override
  Future<List<ChargerMarkerEntity>> fetchMarkers(
      double screenCenterLat, double screenCenterLong, double radius,
      [int? stationCount,
      List<String>? chargeType,
      int? outputMin,
      int? outputMax]) async {
    final markerDataModelResult = await remoteDataSource.fetchMarkers(
      screenCenterLat,
      screenCenterLong,
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
