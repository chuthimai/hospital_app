import 'package:hospital_app/fakedata/physician.dart';
import 'package:hospital_app/fakedata/prescription.dart';
import 'package:hospital_app/fakedata/service.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/assessment_result.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/diagnosis_report.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/condition_diagnosis_severity.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/observation_status.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/record_status.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/image_report.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/image_study.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/measurement_indicator.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/patient_record.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/service_report.dart';

/// Fake danh sách PatientRecord
List<PatientRecord> fakePatientRecords = [
  PatientRecord(
    id: 1,
    status: RecordStatus.complete,
    createTime: DateTime(2025, 9, 15, 10, 0),
    prescription: fakePrescriptions[0], // đơn thuốc của BS A
    serviceReports: [
      DiagnosisReport(
        id: 101,
        category: "Khám bệnh",
        method: "Khám lâm sàng",
        status: ObservationStatus.final_,
        service: fakeServices[0], // Khám nội tổng quát
        requester: fakePhysicians[0], // BS. Nguyễn Văn A
        performer: fakePhysicians[0],
        type: "Khám tổng quát",
        severity: ConditionDiagnosisSeverity.mild,
        conclusion: "Bệnh nhân có dấu hiệu cảm cúm nhẹ.",
        recordedTime: DateTime(2025, 9, 15, 10, 30),
        assessmentResults: [
          AssessmentResult(
            id: 201,
            value: "37.8",
            assessmentItem: MeasurementIndicator(
              id: 301,
              name: "Nhiệt độ",
              type: "temperature",
              unit: "°C",
              minimum: 36.5,
              maximum: 37.5,
            ),
          ),
          AssessmentResult(
            id: 202,
            value: "120/80",
            assessmentItem: MeasurementIndicator(
              id: 302,
              name: "Huyết áp",
              type: "blood-pressure",
              unit: "mmHg",
            ),
          ),
        ],
      ),
      ImagingReport(
        id: 102,
        category: "Chẩn đoán hình ảnh",
        method: "X-quang",
        status: ObservationStatus.final_,
        service: fakeServices[7], // Chụp X-quang phổi
        requester: fakePhysicians[0],
        performer: fakePhysicians[2],
        focus: "Phổi",
        imageStudies: [
          ImageStudy(
            id: 401,
            endpoint: "https://login.medlatec.vn//ckfinder/userfiles/images/chup-ct-phoi-4(1).jpg",
            comment: "Không thấy bất thường",
            modality: "X-ray",
            receivedTime: DateTime(2025, 9, 15, 11, 0),
          ),
        ],
      ),
    ],
  ),
  PatientRecord(
    id: 2,
    status: RecordStatus.incomplete,
    createTime: DateTime(2025, 9, 17, 9, 45),
    prescription: fakePrescriptions[2], // đơn thuốc của BS C
    serviceReports: [
      DiagnosisReport(
        id: 103,
        category: "Khám bệnh",
        method: "Khám chuyên khoa Da liễu",
        status: ObservationStatus.preliminary,
        service: fakeServices[2], // Khám da liễu
        requester: fakePhysicians[1], // BS. Trần Thị B
        performer: fakePhysicians[1],
        type: "Khám da liễu",
        severity: ConditionDiagnosisSeverity.moderate,
        conclusion: "Nghi ngờ viêm da dị ứng, cần xét nghiệm thêm.",
        recordedTime: DateTime(2025, 9, 17, 10, 15),
      ),
      ServiceReport(
        id: 104,
        category: "Xét nghiệm",
        method: "Xét nghiệm máu",
        status: ObservationStatus.registered,
        service: fakeServices[4], // Xét nghiệm máu tổng quát
        requester: fakePhysicians[1],
      ),
    ],
  ),
];
