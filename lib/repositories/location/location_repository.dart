
import 'entities/location_entity.dart';

abstract class LocationRepository {
  Future<LocationEntity> fetchLocationData(String locationId) ;
}
