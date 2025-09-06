import '../entities/qualification.dart';
import '../entities/physician.dart';

abstract class QualificationRepository {
  Future<List<Qualification>> getQualificationOfPhysician(Physician physician);  // api
}