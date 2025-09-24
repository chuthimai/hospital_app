import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/physician.dart';
import 'medical_specialty_api_model.dart';
import 'qualification_api_model.dart';
import '../../domain/entities/enum/roles.dart';

part 'physician_api_model.g.dart';

@JsonSerializable()
class PhysicianApiModel {
  final int identifier;
  final String name;
  final bool? gender;
  final String? role;
  final DateTime? birthDate;
  final String? photo;
  final MedicalSpecialtyApiModel? specialty;
  final List<QualificationApiModel> qualifications;

  PhysicianApiModel({
    required this.identifier,
    required this.name,
    this.gender,
    this.role,
    this.birthDate,
    this.photo,
    this.specialty,
    this.qualifications = const [],
  });

  factory PhysicianApiModel.fromJson(Map<String, dynamic> json) =>
      _$PhysicianApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$PhysicianApiModelToJson(this);

  Physician toEntity() => Physician(
        id: identifier,
        name: name,
        gender: gender,
        role: Roles.physician,
        birthDate: birthDate,
        photo: photo,
        specialty: specialty?.toEntity(),
        qualifications: qualifications.map((q) => q.toEntity()).toList(),
      );

  factory PhysicianApiModel.fromEntity(Physician entity) => PhysicianApiModel(
        identifier: entity.id,
        name: entity.name,
        gender: entity.gender ?? true,
        role: entity.role.name,
        birthDate: entity.birthDate,
        photo: entity.photo,
        specialty: entity.specialty != null
            ? MedicalSpecialtyApiModel.fromEntity(entity.specialty!)
            : null,
        qualifications: entity.qualifications
            .map((q) => QualificationApiModel.fromEntity(q))
            .toList(),
      );
}
