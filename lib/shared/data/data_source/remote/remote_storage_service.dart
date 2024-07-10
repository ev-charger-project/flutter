import 'package:ev_charger/repositories/location/data_models/location_data_model.dart';

abstract class RemoteStorageService {
  Future<LocationDataModel?> fetchLocationData(String locationId);
}
