import 'qualification.dart';
import 'specialty.dart';

class Physician {
  final int id;
  final String name;
  final bool gender;
  final String? photo;
  final Specialty specialty;
  final List<Qualification> qualifications;

  Physician({
    required this.id,
    required this.name,
    required this.gender,
    this.photo,
    required this.specialty,
    this.qualifications = const [],
  });
}
