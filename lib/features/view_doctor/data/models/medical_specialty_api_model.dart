import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/medical_specialty.dart';

part 'medical_specialty_api_model.g.dart';

@JsonSerializable()
class MedicalSpecialtyApiModel {
  final int id;
  final String name;

  MedicalSpecialtyApiModel({
    required this.id,
    required this.name,
  });

  factory MedicalSpecialtyApiModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalSpecialtyApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$MedicalSpecialtyApiModelToJson(this);

  MedicalSpecialty toEntity() => MedicalSpecialty(id: id, name: name);
}
