import 'package:hospital_app/features/view_doctor/data/models/medical_specialty_api_model.dart';

abstract class SpecialtyRemoteDataSource {
  Future<List<MedicalSpecialtyApiModel>> getAllSpecialties();
  Future<List<MedicalSpecialtyApiModel>> getAllNewSpecialties(int lastId);
}

class SpecialtyRemoteDataSourceImpl implements SpecialtyRemoteDataSource {
  @override
  Future<List<MedicalSpecialtyApiModel>> getAllNewSpecialties(int lastId) {
    // TODO: implement getAllNewSpecialties
    throw UnimplementedError();
  }

  @override
  Future<List<MedicalSpecialtyApiModel>> getAllSpecialties() {
    // TODO: implement getAllSpecialties
    throw UnimplementedError();
  }

}