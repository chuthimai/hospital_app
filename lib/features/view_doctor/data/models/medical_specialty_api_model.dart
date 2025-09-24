import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/medical_specialty.dart';

part 'medical_specialty_api_model.g.dart';

@JsonSerializable()
class MedicalSpecialtyApiModel {
  final int identifier;
  final String name;

  MedicalSpecialtyApiModel({
    required this.identifier,
    required this.name,
  });

  factory MedicalSpecialtyApiModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalSpecialtyApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$MedicalSpecialtyApiModelToJson(this);

  MedicalSpecialty toEntity() => MedicalSpecialty(id: identifier, name: name);

  factory MedicalSpecialtyApiModel.fromEntity(MedicalSpecialty entity) =>
      MedicalSpecialtyApiModel(
        identifier: entity.id,
        name: entity.name,
      );
}
