import 'entities/location_entity.dart';

abstract class LocationRepository {
  Future<LocationEntity> fetchLocationData(String locationId);
  Future<List<LocationEntity>> fetchNearby(double lat, double long, double radius);
}
