import 'package:ev_charger/shared/data/data_source/remote/postgresql/postgresql_storage_service.dart';

import '../data_models/location_data_model.dart';

abstract class LocationDataSource {
  Future<LocationDataModel> fetchMarker(int radius);
}
