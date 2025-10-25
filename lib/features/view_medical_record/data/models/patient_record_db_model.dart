import 'package:isar/isar.dart';
import '../../../view_medical_record/domain/entities/enum/record_status.dart';
import '../../../view_prescription/data/models/prescription_db_model.dart';
import '../../domain/entities/patient_record.dart';
import 'service_report_db_model.dart';

part 'patient_record_db_model.g.dart';

@collection
class PatientRecordDbModel {
  Id id;
  late String status;
  late DateTime createTime;

  final serviceReports = IsarLinks<ServiceReportDbModel>();
  final prescription = IsarLink<PrescriptionDbModel>();

  PatientRecordDbModel({
    required this.id,
    required this.status,
    required this.createTime,
  });

  /// DB → Domain
  Future<PatientRecord> toEntity() async {
    await Future.wait([
      serviceReports.load(),
      prescription.load(),
    ]);

    return PatientRecord(
      id: id,
      status: RecordStatusExtention.fromCode(status),
      createTime: createTime,
      serviceReports: await Future.wait(
        serviceReports.map((r) => r.toEntity()),
      ),
      prescription: prescription.value?.toEntity(),
    );
  }

  /// Domain → DB
  factory PatientRecordDbModel.fromEntity(PatientRecord entity) {
    final model = PatientRecordDbModel(
      id: entity.id,
      status: entity.status.name,
      createTime: entity.createTime,
    );

    model.serviceReports.addAll(entity.serviceReports
        .map((e) => ServiceReportDbModel.fromEntity(e)));
    if (entity.prescription != null) {
      model.prescription.value =
          PrescriptionDbModel.fromEntity(entity.prescription!);
    }

    return model;
  }
}
