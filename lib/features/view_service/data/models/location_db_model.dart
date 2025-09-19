import 'package:isar/isar.dart';

import '../../domain/entities/location.dart';

part 'location_db_model.g.dart';

@collection
class LocationDbModel {
  Id id = Isar.autoIncrement;

  late String name;

  final partOfLocation = IsarLink<LocationDbModel>();

  Location toEntity() {
    return Location(
      id: id,
      name: name,
      partOf: partOfLocation.value?.toEntity(),
    );
  }

  static LocationDbModel fromEntity(Location entity) {
    final model = LocationDbModel()
      ..id = entity.id
      ..name = entity.name;

    if (entity.partOf != null) {
      model.partOfLocation.value = LocationDbModel.fromEntity(entity.partOf!);
    }

    return model;
  }
}
