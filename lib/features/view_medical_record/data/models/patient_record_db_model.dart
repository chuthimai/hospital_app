import 'package:isar/isar.dart';
import '../../../view_medical_record/domain/entities/enum/record_status.dart';
import '../../domain/entities/patient_record.dart';

part 'patient_record_db_model.g.dart';

@collection
class PatientRecordDbModel {
  Id id;
  late String status;
  late DateTime createTime;
  late String? pathUrl;
  late String pathFilePdf;

  PatientRecordDbModel({
    required this.id,
    required this.status,
    required this.createTime,
    this.pathUrl,
    required this.pathFilePdf,
  });

  /// DB → Domain
  Future<PatientRecord> toEntity() async {

    return PatientRecord(
      id: id,
      status: RecordStatusExtention.fromCode(status),
      createdTime: createTime,
      pathUrl: pathUrl,
      pathFilePdf: pathFilePdf,
    );
  }

  /// Domain → DB
  factory PatientRecordDbModel.fromEntity(PatientRecord entity) {
    final model = PatientRecordDbModel(
      id: entity.id,
      status: entity.status.name,
      createTime: entity.createdTime,
      pathFilePdf: entity.pathFilePdf ?? "",
      pathUrl: entity.pathUrl,
    );

    return model;
  }
}
