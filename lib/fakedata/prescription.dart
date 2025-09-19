import 'package:hospital_app/fakedata/medication.dart';
import 'package:hospital_app/fakedata/physician.dart';
import 'package:hospital_app/features/view_prescription/domain/entities/prescribed_medication.dart';
import 'package:hospital_app/features/view_prescription/domain/entities/prescription.dart';

/// Danh sách đơn thuốc mẫu
List<Prescription> fakePrescriptions = [
  Prescription(
    id: 1,
    createTime: DateTime(2025, 9, 15, 9, 30),
    performer: fakePhysicians[0], // BS. Nguyễn Văn A
    prescribedMedications: [
      PrescribedMedication(
        id: 1,
        quantity: 20,
        dosageInstruction: "Uống 1 viên x 2 lần/ngày sau ăn",
        medication: fakeMedications[0], // Paracetamol 500mg
      ),
      PrescribedMedication(
        id: 2,
        quantity: 10,
        dosageInstruction: "Uống 1 viên/ngày vào buổi sáng",
        note: "Bổ sung vitamin C",
        medication: fakeMedications[1], // Vitamin C 100mg
      ),
    ],
  ),
  Prescription(
    id: 2,
    createTime: DateTime(2025, 9, 16, 14, 15),
    performer: fakePhysicians[1], // BS. Trần Thị B
    prescribedMedications: [
      PrescribedMedication(
        id: 3,
        quantity: 30,
        dosageInstruction: "Uống 1 viên x 3 lần/ngày trong 10 ngày",
        medication: fakeMedications[2], // Amoxicillin 500mg
      ),
      PrescribedMedication(
        id: 4,
        quantity: 1,
        dosageInstruction: "Bôi ngoài da 2 lần/ngày vào vùng bị viêm",
        medication: fakeMedications[6], // Hydrocortisone Cream 1%
      ),
    ],
  ),
  Prescription(
    id: 3,
    createTime: DateTime(2025, 9, 18, 10, 45),
    performer: fakePhysicians[2], // BS. Lê Văn C
    prescribedMedications: [
      PrescribedMedication(
        id: 5,
        quantity: 15,
        dosageInstruction: "Uống 1 gói pha với 200ml nước, ngày 2 lần",
        medication: fakeMedications[9], // ORS (Oresol)
      ),
      PrescribedMedication(
        id: 6,
        quantity: 1,
        dosageInstruction: "Hít 2 lần/ngày, mỗi lần 1 nhát",
        note: "Dùng khi khó thở",
        medication: fakeMedications[8], // Salbutamol Inhaler
      ),
    ],
  ),
];
