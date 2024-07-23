import 'entities/charger_marker_entity.dart';

abstract class MarkerRepository {
  Future<List<ChargerMarkerEntity>> fetchMarkers(
      double userLat, double userLong, double radius);
}
