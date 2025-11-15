import 'package:hospital_app/features/view_prescription/data/models/prescription_api_model.dart';
import 'package:hospital_app/features/view_prescription/data/models/prescription_db_model.dart';
import 'package:hospital_app/features/view_prescription/domain/entities/prescription.dart';
import 'package:hospital_app/share/utils/app_logger.dart';

import '../../domain/repositories/pescription_repository.dart';
import '../datasources/prescription_local_data_source.dart';
import '../datasources/prescription_remote_data_source.dart';

class PrescriptionRepositoryImpl implements PrescriptionRepository {
  final PrescriptionLocalDataSource _localDataSource;
  final PrescriptionRemoteDataSource _remoteDataSource;

  PrescriptionRepositoryImpl({
    required localDataSource,
    required remoteDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  Future<void> deleteAllPrescriptions() async {
    try {
      _localDataSource.deleteAllPrescriptions();
    } catch (e) {
      AppLogger().error("Local data: $e");
    }
  }

  /// Gọi api để lấy những đơn thuốc mới nhất
  @override
  Future<List<Prescription>> getAllPrescriptions() async {
    try {
      final prescriptionsRemote = await _remoteDataSource.getPrescriptions();
      return prescriptionsRemote.map((e) => e.toEntity()).toList();
    } catch (e) {
      AppLogger().error("Remote data: $e");
    }

    try {
      final prescriptionsLocal = await _localDataSource.getAllPrescriptions();

      return await Future.wait(
          prescriptionsLocal.map((e) => e.toEntity()).toList());
    } catch (e) {
      AppLogger().error("Local data: $e");
    }
    return [];
  }

  /// Gọi dữ liệu từ local trước, local ko có mới gọi api, lưu dữ liệu vào local
  @override
  Future<Prescription> getDetailPrescription(Prescription prescription) async {
    try {
      final prescriptionLocal = await _localDataSource
          .getDetailPrescription(PrescriptionDbModel.fromEntity(prescription));
      if (prescriptionLocal != null &&
          prescriptionLocal.prescribedMedications.isNotEmpty) {
        return prescriptionLocal.toEntity();
      }
    } catch (e) {
      AppLogger().error("Local data: $e");
    }

    try {
      final prescriptionRemote = await _remoteDataSource
          .getDetailPrescription(PrescriptionApiModel.fromEntity(prescription));

      final newPrescription = prescriptionRemote.toEntity();
      await savePrescription(newPrescription);
      return newPrescription;
    } catch (e) {
      AppLogger().error("Remote/Local data: $e");
    }
    return prescription;
  }

  @override
  Future<void> savePrescription(Prescription prescription) async {
    try {
      _localDataSource.savePrescription(prescription);
    } catch (e) {
      AppLogger().error("Local data: $e");
    }
  }
}
