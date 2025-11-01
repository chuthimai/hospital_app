import 'package:isar/isar.dart';
import '../../domain/entities/assessment_item.dart';

part 'assessment_item_db_model.g.dart';

@collection
class AssessmentItemDbModel {
  Id id;
  late String name;

  final children = IsarLinks<AssessmentItemDbModel>();

  AssessmentItemDbModel({
    required this.id,
    required this.name,
  });

  Future<AssessmentItem> toEntity() async {
    await children.load();
    return AssessmentItem(
      id: id,
      name: name,
      children: await Future.wait(children.map((c) => c.toEntity())),
    );
  }

  factory AssessmentItemDbModel.fromEntity(AssessmentItem entity) {
    final model = AssessmentItemDbModel(
      id: entity.id,
      name: entity.name,
    );
    if (entity.children != null) {
      model.children.addAll(
        entity.children!.map((e) => AssessmentItemDbModel.fromEntity(e)),
      );
    }
    return model;
  }
}
