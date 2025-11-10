import 'package:hospital_app/fakedata/physician.dart';
import 'package:hospital_app/fakedata/prescription.dart';
import 'package:hospital_app/fakedata/service.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/assessment_result.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/diagnosis_report.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/condition_diagnosis_severity.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/observation_category_code.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/observation_method.dart';
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
    id: 46,
    status: RecordStatus.complete,
    createdTime: DateTime(2025, 9, 15, 10, 0),
    prescription: fakePrescriptions[0],
    // đơn thuốc của BS A
    serviceReports: [
      DiagnosisReport(
        id: 101,
        category: ObservationCategoryCode.exam,
        method: ObservationMethod.unknown,
        status: ObservationStatus.final_,
        service: fakeServices[0],
        // Khám nội tổng quát
        performer: fakePhysicians[0],
        type: "Khám tổng quát",
        severity: ConditionDiagnosisSeverity.mild,
        conclusion: "Bệnh nhân có dấu hiệu cảm cúm nhẹ.",
        effectiveTime: DateTime(2025, 9, 15, 10, 30),
        recordedTime: DateTime(2025, 9, 15, 10, 30),
        assessmentResults: [
          MeasurementIndicator(
            id: 301,
            name: "Nhiệt độ",
            value: "37.8",
            type: "temperature",
            unit: "°C",
            minimum: 36.5,
            maximum: 37.5,
          ),
          MeasurementIndicator(
            id: 302,
            name: "Huyết áp",
            value: "37.8",
            type: "blood-pressure",
            unit: "mmHg",
            maximum: 300,
            minimum: 200,
          ),
        ],
      ),
      ImageReport(
        id: 102,
        category: ObservationCategoryCode.imaging,
        method: ObservationMethod.unknown,
        status: ObservationStatus.final_,
        service: fakeServices[7],
        // Chụp X-quang phổi
        performer: fakePhysicians[2],
        focus: "Phổi",
        interpretation: "Không thấy bất thường",
        effectiveTime: DateTime(2025, 9, 15, 11, 0),
        imageStudies: [
          ImageStudy(
            id: 401,
            endpoint:
                "https://login.medlatec.vn//ckfinder/userfiles/images/chup-ct-phoi-4(1).jpg",
            receivedTime: DateTime(2025, 9, 15, 11, 0),
          ),
        ],
      ),
    ],
  ),
  PatientRecord(
    id: 47,
    status: RecordStatus.incomplete,
    createdTime: DateTime(2025, 9, 17, 9, 45),
    prescription: fakePrescriptions[2],
    // đơn thuốc của BS C
    serviceReports: [
      DiagnosisReport(
        id: 103,
        category: ObservationCategoryCode.therapy,
        method: ObservationMethod.unknown,
        status: ObservationStatus.final_,
        service: fakeServices[2],
        // Khám da liễu
        performer: fakePhysicians[1],
        type: "Khám da liễu",
        severity: ConditionDiagnosisSeverity.moderate,
        conclusion: "Nghi ngờ viêm da dị ứng, cần xét nghiệm thêm.",
        effectiveTime: DateTime(2025, 9, 17, 10, 15),
        recordedTime: DateTime(2025, 9, 17, 10, 15),
        assessmentResults: [
          AssessmentResult(
            id: 301,
            name: "1. Tình trạng hiện tại",
            value: "Da nổi mẩn ngứa",
          ),
          AssessmentResult(id: 302, name: "2. Chuẩn đoán", assessmentResults: [
            AssessmentResult(
              id: 303,
              name: "2.1. Nguyên nhân",
              value: "Nguy cơ bị kiến đa khoa cắn"
            ),
            AssessmentResult(
                id: 304,
                name: "2.2. Nguyên nhân",
                value: "Nguy cơ bị kiến đa khoa cắn 2"
            ),
            AssessmentResult(
                id: 305,
                name: "2.3. Tình trạng hiện tại ",
                assessmentResults: [
                  MeasurementIndicator(
                    id: 301,
                    name: "Nhiệt độ",
                    value: "37.8",
                    type: "temperature",
                    unit: "°C",
                    minimum: 36.5,
                    maximum: 37.5,
                  ),
                  MeasurementIndicator(
                    id: 302,
                    name: "Huyết áp",
                    value: "37.8",
                    type: "blood-pressure",
                    unit: "mmHg",
                    maximum: 300,
                    minimum: 200,
                  ),
                ]
            ),
          ],),
          AssessmentResult(
            id: 309,
            name: "3. Tình trạng hiện tại",
            value: "Da nổi mẩn ngứa",
          ),
          AssessmentResult(
            id: 301,
            name: "1. Tình trạng hiện tại",
            value: "Da nổi mẩn ngứa",
          ),
          AssessmentResult(id: 302, name: "2. Chuẩn đoán", assessmentResults: [
            AssessmentResult(
                id: 303,
                name: "2.1. Nguyên nhân",
                value: "Nguy cơ bị kiến đa khoa cắn"
            ),
            AssessmentResult(
                id: 304,
                name: "2.2. Nguyên nhân",
                value: "Nguy cơ bị kiến đa khoa cắn 2"
            ),
            AssessmentResult(
                id: 305,
                name: "2.3. Tình trạng hiện tại ",
                assessmentResults: [
                  MeasurementIndicator(
                    id: 301,
                    name: "Nhiệt độ",
                    value: "37.8",
                    type: "temperature",
                    unit: "°C",
                    minimum: 36.5,
                    maximum: 37.5,
                  ),
                  MeasurementIndicator(
                    id: 302,
                    name: "Huyết áp",
                    value: "37.8",
                    type: "blood-pressure",
                    unit: "mmHg",
                    maximum: 300,
                    minimum: 200,
                  ),
                ]
            ),
          ],),
        ],
      ),
      ServiceReport(
        id: 104,
        category: ObservationCategoryCode.laboratory,
        method: ObservationMethod.unknown,
        status: ObservationStatus.registered,
        service: fakeServices[4],
      ),
    ],
  ),
  PatientRecord(
    id: 48,
    status: RecordStatus.incomplete,
    createdTime: DateTime(2025, 9, 17, 9, 45),
    prescription: fakePrescriptions[2],
    // đơn thuốc của BS C
    serviceReports: [
      DiagnosisReport(
        id: 103,
        category: ObservationCategoryCode.therapy,
        method: ObservationMethod.unknown,
        status: ObservationStatus.final_,
        service: fakeServices[2],
        // Khám da liễu
        performer: fakePhysicians[1],
        type: "Khám da liễu",
        severity: ConditionDiagnosisSeverity.moderate,
        conclusion: "Nghi ngờ viêm da dị ứng, cần xét nghiệm thêm.",
        effectiveTime: DateTime(2025, 9, 17, 10, 15),
        recordedTime: DateTime(2025, 9, 17, 10, 15),
        assessmentResults: [
          AssessmentResult(
            id: 301,
            name: "1. Tình trạng hiện tại",
            value: "Da nổi mẩn ngứa",
          ),
          AssessmentResult(id: 302, name: "2. Chuẩn đoán", assessmentResults: [
            AssessmentResult(
                id: 303,
                name: "2.1. Nguyên nhân",
                value: "Nguy cơ bị kiến đa khoa cắn"
            ),
            AssessmentResult(
                id: 304,
                name: "2.2. Nguyên nhân",
                value: "Nguy cơ bị kiến đa khoa cắn 2"
            ),
          ])
        ],
      ),
      ServiceReport(
        id: 104,
        category: ObservationCategoryCode.laboratory,
        method: ObservationMethod.unknown,
        status: ObservationStatus.registered,
        service: fakeServices[4],
      ),
    ],
  ),
  PatientRecord(
    id: 49,
    status: RecordStatus.incomplete,
    createdTime: DateTime(2025, 9, 17, 9, 45),
    prescription: fakePrescriptions[2],
    // đơn thuốc của BS C
    serviceReports: [
      DiagnosisReport(
        id: 103,
        category: ObservationCategoryCode.therapy,
        method: ObservationMethod.unknown,
        status: ObservationStatus.final_,
        service: fakeServices[2],
        // Khám da liễu
        performer: fakePhysicians[1],
        type: "Khám da liễu",
        severity: ConditionDiagnosisSeverity.moderate,
        conclusion: "Nghi ngờ viêm da dị ứng, cần xét nghiệm thêm.",
        effectiveTime: DateTime(2025, 9, 17, 10, 15),
        recordedTime: DateTime(2025, 9, 17, 10, 15),
        assessmentResults: [
          AssessmentResult(
            id: 301,
            name: "1. Tình trạng hiện tại",
            value: "Da nổi mẩn ngứa",
          ),
          AssessmentResult(id: 302, name: "2. Chuẩn đoán", assessmentResults: [
            AssessmentResult(
                id: 303,
                name: "2.1. Nguyên nhân",
                value: "Nguy cơ bị kiến đa khoa cắn"
            ),
            AssessmentResult(
                id: 304,
                name: "2.2. Nguyên nhân",
                value: "Nguy cơ bị kiến đa khoa cắn 2"
            ),
          ])
        ],
      ),
      ServiceReport(
        id: 104,
        category: ObservationCategoryCode.laboratory,
        method: ObservationMethod.unknown,
        status: ObservationStatus.registered,
        service: fakeServices[4],
      ),
    ],
  ),
  PatientRecord(
      id: 50,
      createdTime: DateTime.now(),
      pathUrl:
          "https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf",
      pathFilePdf: "/data/user/0/com.example.hospital_app/app_flutter/test.pdf")
];
