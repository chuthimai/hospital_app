import '../entities/location.dart';

abstract class LocationRepository {
  Future<void> saveLocation(Location location);  // local
  Future<void> deleteAllLocations();  // local
  Future<void> deleteLocation();  // local
}