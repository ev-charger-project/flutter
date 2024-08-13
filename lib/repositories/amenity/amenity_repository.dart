import 'entities/amenity_entity.dart';

abstract class AmenityRepository {
  Future<List<AmenityEntity>> fetchAmenity();
}
