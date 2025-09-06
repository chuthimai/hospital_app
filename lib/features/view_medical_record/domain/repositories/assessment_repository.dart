import '../entities/assessment_category.dart';
import '../entities/assessment_question.dart';
import '../entities/assessment_result.dart';
import '../entities/assessment_item.dart';
import '../entities/measurement_indicator.dart';

/// Tất cả method đều xử lý ở local
abstract class AssessmentRepository {
  Future<void> saveAssessmentResult(AssessmentResult assessmentResult);
  Future<void> saveAssessmentResults(List<AssessmentResult> assessmentResults);
  Future<void> deleteAssessmentResults();

  Future<void> saveAssessmentItem(AssessmentItem assessmentItem);
  Future<void> deleteAssessmentItems();

  Future<void> saveAssessmentQuestion(AssessmentQuestion assessmentQuestion);
  Future<void> deleteAssessmentQuestions();

  Future<void> saveMeasurementIndicator(MeasurementIndicator measurementIndicator);
  Future<void> deleteMeasurementIndicators();

  Future<void> saveAssessmentCategory(AssessmentCategory assessmentCategory);
  Future<void> deleteAssessmentCategories();
}
