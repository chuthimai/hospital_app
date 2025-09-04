import '../entities/qualification.dart';
import '../entities/doctor.dart';

abstract class QualificationRepository {
  /// Chỉ gọi tử remote ko lưu
  Future<List<Qualification>> getQualificationOfDoctor(Doctor doctor);
}