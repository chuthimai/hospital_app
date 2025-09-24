import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/qualification.dart';

part 'qualification_api_model.g.dart';

@JsonSerializable()
class QualificationApiModel {
  final int id;
  final String name;
  final String specialty;
  final String issuer;
  final String type;
  final DateTime effectiveDate;
  final DateTime? expiredDate;

  QualificationApiModel({
    required this.id,
    required this.name,
    required this.specialty,
    required this.issuer,
    required this.type,
    required this.effectiveDate,
    this.expiredDate,
  });

  factory QualificationApiModel.fromJson(Map<String, dynamic> json) =>
      _$QualificationApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$QualificationApiModelToJson(this);

  Qualification toEntity() => Qualification(
    id: id,
    name: name,
    specialty: specialty,
    issuer: issuer,
    type: type,
    effectiveDate: effectiveDate,
    expiredDate: expiredDate,
  );

  factory QualificationApiModel.fromEntity(Qualification entity) {
    return QualificationApiModel(
      id: entity.id,
      name: entity.name,
      specialty: entity.specialty,
      issuer: entity.issuer,
      type: entity.type,
      effectiveDate: entity.effectiveDate,
      expiredDate: entity.expiredDate,
    );
  }
}
