import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/service.dart';
import 'location_api_model.dart';

part 'service_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ServiceApiModel {
  final int id;
  final String name;
  final String? detailDescription;
  final LocationApiModel location;
  final bool isCompleted;

  ServiceApiModel({
    required this.id,
    required this.name,
    this.detailDescription,
    required this.location,
    this.isCompleted = true,
  });

  // --- JSON Serializable ---
  factory ServiceApiModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceApiModelToJson(this);

  // --- Mapping ---
  Service toEntity() {
    return Service(
      id: id,
      name: name,
      detailDescription: detailDescription,
      location: location.toEntity(),
      isCompleted: isCompleted,
    );
  }

  static ServiceApiModel fromEntity(Service entity) {
    return ServiceApiModel(
      id: entity.id,
      name: entity.name,
      detailDescription: entity.detailDescription,
      location: LocationApiModel.fromEntity(entity.location),
      isCompleted: entity.isCompleted,
    );
  }
}
