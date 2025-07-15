import 'package:ev_charger/repositories/amenity/entities/amenity_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_amenity_entity.freezed.dart';

@freezed
class LocationAmenityEntity with _$LocationAmenityEntity {
  const factory LocationAmenityEntity({
    required AmenityEntity amenities,
  }) = _LocationAmenityEntity;
}
