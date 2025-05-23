import 'amenity_repository.dart';
import 'data_sources/amenity_remote_data_source.dart';
import 'entities/amenity_entity.dart';

class AmenityRepositoryImpl extends AmenityRepository {
  AmenityRepositoryImpl(this.remoteDataSource);

  final AmenityRemoteDataSource remoteDataSource;

  @override
  Future<List<AmenityEntity>> fetchAmenity() async {
    final chargeTypeDataModelResult = await remoteDataSource.fetchAmenityData();
    final result = AmenityMapper().toEntityList(chargeTypeDataModelResult);
    return result;
  }
}
