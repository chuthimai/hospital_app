import 'qualification.dart';
import 'enum/roles.dart';
import 'medical_specialty.dart';

class Physician {
  final int id;
  final String name;
  final bool? gender;
  final Roles role;
  final DateTime? birthDate;
  final String? photo;
  final MedicalSpecialty? specialty;
  final List<Qualification> qualifications;

  Physician({
    required this.id,
    required this.name,
    this.gender,
    this.birthDate,
    this.photo,
    this.role = Roles.physician,
    this.specialty,
    this.qualifications = const [],
  });
}
