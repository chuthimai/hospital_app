import 'package:isar/isar.dart';
import '../../domain/entities/assessment_result.dart';
import 'assessment_item_db_model.dart';

part 'assessment_result_db_model.g.dart';

@collection
class AssessmentResultDbModel {
  Id id;
  late String value;

  final assessmentItem = IsarLink<AssessmentItemDbModel>();

  AssessmentResultDbModel({
    required this.id,
    required this.value,
  });

  /// Convert DB model → Domain entity
  Future<AssessmentResult> toEntity() async {
    await assessmentItem.load();
    return AssessmentResult(
      id: id,
      value: value,
      assessmentItem: await assessmentItem.value!.toEntity(),
    );
  }

  /// Convert Domain entity → DB model
  factory AssessmentResultDbModel.fromEntity(AssessmentResult entity) {
    final result = AssessmentResultDbModel(
      id: entity.id,
      value: entity.value,
    );

    result.assessmentItem.value =
        AssessmentItemDbModel.fromEntity(entity.assessmentItem);
    return result;
  }
}
