import 'package:hospital_app/features/view_doctor/data/models/medical_specialty_api_model.dart';
import 'package:hospital_app/share/constants/path_api.dart';
import 'package:hospital_app/share/dio/remote_service.dart';

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
  Future<List<MedicalSpecialtyApiModel>> getAllSpecialties() async {
    try {
      final remote = RemoteService();
      final response = await remote.get(PathApi.specializations);

      final data = response.data as List<dynamic>;
      final specialties = data
          .map((json) => MedicalSpecialtyApiModel.fromJson(json as Map<String, dynamic>))
          .toList();

      return specialties;
    } catch(e) {
      rethrow;
    }
  }

}