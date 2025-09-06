import 'package:hospital_app/features/view_medical_record/domain/entities/diagnosis_report.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/image_report.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/image_study.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/service_report.dart';

/// Tất cả method đều xử lý ở local
abstract class ReportRepository {
  Future<void> saveServiceReport(ServiceReport serviceReport);
  Future<void> saveServiceReports(List<ServiceReport> serviceReports);
  Future<void> deleteServiceReports();

  Future<void> saveDiagnosisReport(DiagnosisReport diagnosisReport);
  Future<void> deleteDiagnosisReports();

  Future<void> saveImagingReport(ImagingReport imagingReport);
  Future<void> deleteImageReports();

  Future<void> saveImageStudy(ImageStudy imageStudy);
  Future<void> saveImageStudies(List<ImageStudy> imageStudies);
  Future<void> deleteImageStudies();
}