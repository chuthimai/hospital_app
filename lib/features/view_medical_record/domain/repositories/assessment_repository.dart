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

  Future<void> saveMeasurementIndicator(MeasurementIndicator measurementIndicator);
  Future<void> deleteMeasurementIndicators();
}
