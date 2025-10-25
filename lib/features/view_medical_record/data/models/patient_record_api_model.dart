import 'package:hospital_app/features/view_medical_record/domain/entities/enum/record_status.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../view_prescription/data/models/prescription_api_model.dart';
import '../../domain/entities/patient_record.dart';
import 'service_report_api_model.dart';

part 'patient_record_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PatientRecordApiModel {
  final int id;
  final String status;
  final DateTime createTime;
  final List<ServiceReportApiModel> serviceReports;
  final PrescriptionApiModel? prescription;

  PatientRecordApiModel({
    required this.id,
    required this.status,
    required this.createTime,
    this.serviceReports = const [],
    this.prescription,
  });

  factory PatientRecordApiModel.fromJson(Map<String, dynamic> json) =>
      _$PatientRecordApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$PatientRecordApiModelToJson(this);

  /// API → Domain
  PatientRecord toEntity() => PatientRecord(
    id: id,
    status: RecordStatusExtention.fromCode(status),
    createTime: createTime,
    serviceReports: serviceReports.map((r) => r.toEntity()).toList(),
    prescription: prescription?.toEntity(),
  );

  /// Domain → API
  factory PatientRecordApiModel.fromEntity(PatientRecord entity) =>
      PatientRecordApiModel(
        id: entity.id,
        status: entity.status.toCode(),
        createTime: entity.createTime,
        serviceReports: entity.serviceReports
            .map((e) => ServiceReportApiModel.fromEntity(e))
            .toList(),
        prescription: entity.prescription != null
            ? PrescriptionApiModel.fromEntity(entity.prescription!)
            : null,
      );
}
