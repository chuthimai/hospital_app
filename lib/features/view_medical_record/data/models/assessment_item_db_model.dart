import 'package:isar/isar.dart';
import '../../domain/entities/assessment_item.dart';

part 'assessment_item_db_model.g.dart';

@collection
class AssessmentItemDbModel {
  Id id;
  late String name;

  final parentAssessmentItem = IsarLink<AssessmentItemDbModel>();

  AssessmentItemDbModel({
    required this.id,
    required this.name,
  });

  Future<AssessmentItem> toEntity() async {
    await parentAssessmentItem.load();
    return AssessmentItem(
      id: id,
      name: name,
      parentAssessmentItem: parentAssessmentItem.value == null
          ? null
          : await parentAssessmentItem.value!.toEntity(),
    );
  }

  factory AssessmentItemDbModel.fromEntity(AssessmentItem entity) {
    final model = AssessmentItemDbModel(
      id: entity.id,
      name: entity.name,
    );
    if (entity.parentAssessmentItem != null) {
      model.parentAssessmentItem.value =
          AssessmentItemDbModel.fromEntity(entity.parentAssessmentItem!);
    }
    return model;
  }
}
