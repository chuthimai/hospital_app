import 'package:hospital_app/share/constants/app_default.dart';
import 'package:isar/isar.dart';
import '../../domain/entities/enum/roles.dart';
import '../../domain/entities/physician.dart';
import 'medical_specialty_db_model.dart';

part 'physician_db_model.g.dart';

@collection
class PhysicianDbModel {
  Id id = 0;

  late String name;
  late bool gender;
  late String role;
  DateTime? birthDate;
  String? photo;

  final specialty = IsarLink<MedicalSpecialtyDbModel>();

  PhysicianDbModel({
    required this.id,
    required this.name,
    required this.gender,
    required this.role,
    this.birthDate,
    this.photo,
  });

  factory PhysicianDbModel.fromEntity(Physician physician) {
    final dbModel = PhysicianDbModel(
      id: physician.id,
      name: physician.name,
      gender: physician.gender ?? true,
      role: physician.role.toString().split('.').last,
      birthDate: physician.birthDate,
      photo: physician.photo,
    );
    dbModel.specialty.value = physician.specialty != null
        ? MedicalSpecialtyDbModel.fromEntity(physician.specialty!)
        : null;

    return dbModel;
  }

  Future<Physician> toEntity() async {
    await specialty.load();

    return Physician(
      id: id,
      name: name,
      gender: gender,
      role: Roles.physician,
      birthDate: birthDate,
      photo: photo ?? AppDefault.imageLink,
      specialty: specialty.value!.toEntity(),
    );
  }
}
