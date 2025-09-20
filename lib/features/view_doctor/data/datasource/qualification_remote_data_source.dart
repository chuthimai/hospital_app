import 'package:hospital_app/features/view_doctor/data/models/qualification_api_model.dart';

abstract class QualificationRemoteDataSource {
  Future<List<QualificationApiModel>> getQualificationOfPhysician(int physicianId);
}

class QualificationRemoteDataSourceImpl implements QualificationRemoteDataSource {
  @override
  Future<List<QualificationApiModel>> getQualificationOfPhysician(int physicianId) {
    // TODO: implement getQualificationOfPhysician
    throw UnimplementedError();
  }

}