import 'entities/charger_marker_entity.dart';

abstract class MarkerRepository {
  Future<List<ChargerMarkerEntity>> fetchMarkers(
      double userLat, double userLong, double radius,
      [int? stationCount,
      List<String>? chargeType,
      int? outputMin,
      int? outputMax]);
}
