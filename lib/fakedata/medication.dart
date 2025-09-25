import 'package:hospital_app/features/view_prescription/domain/entities/enum/snomedct_form_codes.dart';
import 'package:hospital_app/features/view_prescription/domain/entities/medication.dart';

/// Danh sách thuốc mẫu
List<Medication> fakeMedications = [
  Medication(
    id: 1,
    name: "Paracetamol 500mg",
    doseForm: SNOMEDCTFormCodes.tablet, // Viên nén
  ),
  Medication(
    id: 2,
    name: "Vitamin C 100mg",
    doseForm: SNOMEDCTFormCodes.chewableTablet, // Viên nhai
  ),
  Medication(
    id: 3,
    name: "Amoxicillin 500mg",
    doseForm: SNOMEDCTFormCodes.capsule, // Viên nang
  ),
  Medication(
    id: 4,
    name: "Ibuprofen 100mg/5ml",
    doseForm: SNOMEDCTFormCodes.oralSuspension, // Hỗn dịch uống
  ),
  Medication(
    id: 5,
    name: "Vitamin D3 Drops",
    doseForm: SNOMEDCTFormCodes.oralDrops, // Dung dịch nhỏ uống
  ),
  Medication(
    id: 6,
    name: "Ceftriaxone 1g",
    doseForm: SNOMEDCTFormCodes.injectionSolution, // Dung dịch tiêm
  ),
  Medication(
    id: 7,
    name: "Hydrocortisone Cream 1%",
    doseForm: SNOMEDCTFormCodes.cream, // Kem bôi ngoài da
  ),
  Medication(
    id: 8,
    name: "Gentamicin Ointment",
    doseForm: SNOMEDCTFormCodes.ointment, // Thuốc mỡ
  ),
  Medication(
    id: 9,
    name: "Salbutamol Inhaler",
    doseForm: SNOMEDCTFormCodes.inhalationPowder, // Bột hít
  ),
  Medication(
    id: 10,
    name: "ORS (Oresol)",
    doseForm: SNOMEDCTFormCodes.oralSolution, // Dung dịch uống
  ),
];
