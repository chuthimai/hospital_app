import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/service.dart';
import 'location_api_model.dart';

part 'service_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ServiceApiModel {
  final int identifier;
  final String name;
  final String? detailDescription;
  final LocationApiModel? location;
  final bool active;

  ServiceApiModel({
    required this.identifier,
    required this.name,
    this.detailDescription,
    this.location,
    this.active = true,
  });

  // --- JSON Serializable ---
  factory ServiceApiModel.fromJson(Map<String, dynamic> json) {
    return _$ServiceApiModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServiceApiModelToJson(this);

  // --- Mapping ---
  Service toEntity() {
    return Service(
      id: identifier,
      name: name,
      extraDetails: detailDescription,
      location: location?.toEntity(),
      isCompleted: !active,
    );
  }

  static ServiceApiModel fromEntity(Service entity) {
    return ServiceApiModel(
      identifier: entity.id,
      name: entity.name,
      detailDescription: entity.extraDetails,
      location: entity.location == null
          ? null
          : LocationApiModel.fromEntity(entity.location!),
      active: !entity.isCompleted,
    );
  }
}
