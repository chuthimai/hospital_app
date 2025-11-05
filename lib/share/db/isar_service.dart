import 'package:hospital_app/features/appointment/data/models/appointment_db_model.dart';
import 'package:hospital_app/features/appointment/data/models/shift_db_model.dart';
import 'package:hospital_app/features/appointment/data/models/work_schedule_db_model.dart';
import 'package:hospital_app/features/notification/data/models/notification_db_model.dart';
import 'package:hospital_app/features/view_doctor/data/models/medical_specialty_db_model.dart';
import 'package:hospital_app/features/view_doctor/data/models/physician_db_model.dart';
import 'package:hospital_app/features/view_medical_record/data/models/assessment_item_db_model.dart';
import 'package:hospital_app/features/view_medical_record/data/models/assessment_result_db_model.dart';
import 'package:hospital_app/features/view_medical_record/data/models/diagnosis_report_db_model.dart';
import 'package:hospital_app/features/view_medical_record/data/models/image_report_db_model.dart';
import 'package:hospital_app/features/view_medical_record/data/models/image_study_db_model.dart';
import 'package:hospital_app/features/view_medical_record/data/models/measurement_indicator_db_model.dart';
import 'package:hospital_app/features/view_medical_record/data/models/patient_record_db_model.dart';
import 'package:hospital_app/features/view_medical_record/data/models/service_report_db_model.dart';
import 'package:hospital_app/features/view_prescription/data/models/medication_db_model.dart';
import 'package:hospital_app/features/view_prescription/data/models/prescribed_medication_db_model.dart';
import 'package:hospital_app/features/view_prescription/data/models/prescription_db_model.dart';
import 'package:hospital_app/features/view_service/data/models/location_db_model.dart';
import 'package:hospital_app/features/view_service/data/models/service_db_model.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  static Isar? _isar;

  static Future<Isar> get instance async {
    if (_isar != null) return _isar!;
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [
        // Đơn thuốc
        PrescriptionDbModelSchema,
        PrescribedMedicationDbModelSchema,
        MedicationDbModelSchema,

        // Thông báo
        NotificationDbModelSchema,

        // Đặt lịch
        LocationDbModelSchema,
        ServiceDbModelSchema,
        PhysicianDbModelSchema,
        MedicalSpecialtyDbModelSchema,
        AppointmentDbModelSchema,
        ShiftDbModelSchema,
        WorkScheduleDbModelSchema,

        // Bệnh án
        AssessmentItemDbModelSchema,
        AssessmentResultDbModelSchema,
        DiagnosisReportDbModelSchema,
        ImageReportDbModelSchema,
        ImageStudyDbModelSchema,
        MeasurementIndicatorDbModelSchema,
        PatientRecordDbModelSchema,
        ServiceReportDbModelSchema,
      ],
      directory: dir.path,
      inspector: true,
    );
    return _isar!;
  }
}
