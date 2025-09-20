import 'package:isar/isar.dart';
import '../../domain/entities/medical_specialty.dart';

part 'medical_specialty_db_model.g.dart';

@collection
class MedicalSpecialtyDbModel {
  Id id = 0;

  @Index(unique: true)
  late String name;

  MedicalSpecialtyDbModel({
    required this.id,
    required this.name,
  });

  factory MedicalSpecialtyDbModel.fromEntity(MedicalSpecialty specialty) =>
      MedicalSpecialtyDbModel(id: specialty.id, name: specialty.name);

  MedicalSpecialty toEntity() => MedicalSpecialty(id: id, name: name);
}
