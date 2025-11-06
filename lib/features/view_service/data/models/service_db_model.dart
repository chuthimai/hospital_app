import 'package:isar/isar.dart';
import '../../domain/entities/service.dart';
import 'location_db_model.dart';

part 'service_db_model.g.dart';

@collection
class ServiceDbModel {
  Id id = Isar.autoIncrement;

  late String name;
  String? detailDescription;
  bool isCompleted = true;

  final location = IsarLink<LocationDbModel>();

  Future<Service> toEntity() async {
    await location.load();

    return Service(
      id: id,
      name: name,
      extraDetails: detailDescription,
      location: location.value?.toEntity(),
      isCompleted: isCompleted,
    );
  }

  static ServiceDbModel fromEntity(Service entity) {
    final model = ServiceDbModel()
      ..id = entity.id
      ..name = entity.name
      ..detailDescription = entity.extraDetails
      ..isCompleted = entity.isCompleted;

    if (entity.location != null) {
      model.location.value = LocationDbModel.fromEntity(entity.location!);
    }

    return model;
  }
}
