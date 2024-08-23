import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../repositories/amenity/entities/amenity_entity.dart';
import 'amenity_repository_provider.dart';

final amenityProvider = FutureProvider<List<AmenityEntity>>((ref) async {
  final amenityRepository = ref.read(amenityRepositoryProvider);
  final amenityData = await amenityRepository.fetchAmenity();
  return amenityData;
});
