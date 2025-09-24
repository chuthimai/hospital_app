import 'package:hospital_app/features/view_doctor/data/models/physician_api_model.dart';
import 'package:hospital_app/share/constants/path_api.dart';
import 'package:hospital_app/share/dio/remote_service.dart';

abstract class PhysicianRemoteDataSource {
  Future<List<PhysicianApiModel>> getAllPhysicians();
  Future<List<PhysicianApiModel>> getAllNewPhysicians(int lastId);
  Future<PhysicianApiModel> getPhysicianDetail(int physicianId);
  Future<List<PhysicianApiModel>> getAllPhysiciansInSpecialty(int medicalSpecialtyId);
}

class PhysicianRemoteDataSourceImpl implements PhysicianRemoteDataSource {
  @override
  Future<List<PhysicianApiModel>> getAllNewPhysicians(int lastId) {
    // TODO: implement getAllNewPhysicians
    throw UnimplementedError();
  }

  @override
  Future<List<PhysicianApiModel>> getAllPhysicians() {
    // TODO: implement getAllPhysicians
    throw UnimplementedError();
  }

  @override
  Future<PhysicianApiModel> getPhysicianDetail(int physicianId) {
    // TODO: implement getPhysicianDetail
    throw UnimplementedError();
  }

  @override
  Future<List<PhysicianApiModel>> getAllPhysiciansInSpecialty(int medicalSpecialtyId) async {
    try {
      final remote = RemoteService();
      final response = await remote.get(
        PathApi.searchPhysicianBySpecialty + medicalSpecialtyId.toString()
      );

      final data = response.data as List<dynamic>;
      final physicians = data
          .map((json) => PhysicianApiModel.fromJson(json as Map<String, dynamic>))
          .toList();

      return physicians;
    } catch (e) {
      rethrow;
    }
  }

}