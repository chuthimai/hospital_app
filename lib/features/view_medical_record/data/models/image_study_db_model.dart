import 'package:isar/isar.dart';
import '../../domain/entities/image_study.dart';

part 'image_study_db_model.g.dart';

@collection
class ImageStudyDbModel {
  Id id;
  late String endpoint;
  DateTime? receivedTime;

  ImageStudyDbModel({
    required this.id,
    required this.endpoint,
    this.receivedTime,
  });

  /// Convert DB model → Domain entity
  ImageStudy toEntity() => ImageStudy(
    id: id,
    endpoint: endpoint,
    receivedTime: receivedTime,
  );

  /// Convert Domain entity → DB model
  factory ImageStudyDbModel.fromEntity(ImageStudy entity) =>
      ImageStudyDbModel(
        id: entity.id,
        endpoint: entity.endpoint,
        receivedTime: entity.receivedTime,
      );
}
