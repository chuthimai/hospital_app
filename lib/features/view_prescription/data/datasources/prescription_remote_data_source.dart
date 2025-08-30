import 'package:hospital_app/features/view_prescription/data/models/prescription_api_model.dart';

abstract class PrescriptionRemoteDataSource {
  Future<List<PrescriptionApiModel>> getPrescriptions({int lastId = 0});
  Future<PrescriptionApiModel> getDetailPrescription(PrescriptionApiModel prescription);
}