import 'data_models/location_data_model.dart';

abstract class LocationRepository {
  Future<LocationDataModel> fetchLocationData(String locationId) ;
}
