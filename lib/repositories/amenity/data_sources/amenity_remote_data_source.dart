import '../../../shared/data/data_source/remote/remote_storage_service.dart';
import '../data_models/amenity_data_model.dart';

abstract class AmenityDataSource {
  Future<List<AmenityDataModel>> fetchAmenityData();
}

class AmenityRemoteDataSource extends AmenityDataSource {
  AmenityRemoteDataSource(this.remoteStorageService);

  final RemoteStorageService remoteStorageService;

  @override
  Future<List<AmenityDataModel>> fetchAmenityData() async {
    final data = await remoteStorageService.fetchAmenityData();
    return data;
  }
}
