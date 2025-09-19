import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/location.dart';

part 'location_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class LocationApiModel {
  final int id;
  final String name;
  final LocationApiModel? partOfLocation;

  LocationApiModel({
    required this.id,
    required this.name,
    this.partOfLocation,
  });

  factory LocationApiModel.fromJson(Map<String, dynamic> json) =>
      _$LocationApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationApiModelToJson(this);

  Location toEntity() {
    return Location(
      id: id,
      name: name,
      partOf: partOfLocation?.toEntity(),
    );
  }

  static LocationApiModel fromEntity(Location entity) {
    return LocationApiModel(
      id: entity.id,
      name: entity.name,
      partOfLocation: entity.partOf != null
          ? LocationApiModel.fromEntity(entity.partOf!)
          : null,
    );
  }
}
