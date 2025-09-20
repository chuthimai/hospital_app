import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/physician.dart';
import 'medical_specialty_api_model.dart';
import 'qualification_api_model.dart';
import '../../domain/entities/enum/roles.dart';

part 'physician_api_model.g.dart';

@JsonSerializable()
class PhysicianApiModel {
  final int id;
  final String name;
  final bool gender;
  final String role;
  final DateTime? birthDate;
  final String? photo;
  final MedicalSpecialtyApiModel specialty;
  final List<QualificationApiModel> qualifications;

  PhysicianApiModel({
    required this.id,
    required this.name,
    required this.gender,
    required this.role,
    this.birthDate,
    this.photo,
    required this.specialty,
    this.qualifications = const [],
  });

  factory PhysicianApiModel.fromJson(Map<String, dynamic> json) =>
      _$PhysicianApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$PhysicianApiModelToJson(this);

  Physician toEntity() => Physician(
    id: id,
    name: name,
    gender: gender,
    role: Roles.physician,
    birthDate: birthDate,
    photo: photo,
    specialty: specialty.toEntity(),
    qualifications: qualifications.map((q) => q.toEntity()).toList(),
  );
}
