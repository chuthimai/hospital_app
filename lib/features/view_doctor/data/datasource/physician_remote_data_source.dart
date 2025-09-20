import 'package:hospital_app/features/view_doctor/data/models/physician_api_model.dart';

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
  Future<List<PhysicianApiModel>> getAllPhysiciansInSpecialty(int medicalSpecialtyId) {
    // TODO: implement getAllPhysiciansInSpecialty
    throw UnimplementedError();
  }

}