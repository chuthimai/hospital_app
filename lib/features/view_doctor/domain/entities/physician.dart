import 'qualification.dart';
import 'enum/roles.dart';
import 'medical_specialty.dart';

class Physician {
  final int _id;
  final String _name;
  final bool? _gender;
  final Roles _role;
  final DateTime? _birthDate;
  final String? _photo;
  MedicalSpecialty? _specialty;
  final List<Qualification> _qualifications;

  Physician({
    required int id,
    required String name,
    bool? gender,
    DateTime? birthDate,
    String? photo,
    Roles role = Roles.physician,
    MedicalSpecialty? specialty,
    List<Qualification> qualifications = const [],
  }) : _id = id,
        _name = name,
        _gender = gender,
        _birthDate = birthDate,
        _photo = photo,
        _role = role,
        _specialty = specialty,
        _qualifications = qualifications;

  int get id => _id;
  String get name => _name;
  bool? get gender => _gender;
  Roles get role => _role;
  DateTime? get birthDate => _birthDate;
  String? get photo => _photo;
  MedicalSpecialty? get specialty => _specialty;
  List<Qualification> get qualifications => _qualifications;

  void setSpecialty(MedicalSpecialty specialty) {
    _specialty = specialty;
  }
}