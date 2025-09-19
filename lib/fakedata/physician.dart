import 'package:hospital_app/features/view_doctor/domain/entities/medical_specialty.dart';
import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';
import 'package:hospital_app/features/view_doctor/domain/entities/qualification.dart';

/// Danh sách bác sĩ mẫu
List<Physician> fakePhysicians = [
  Physician(
    id: 1001,
    name: "BS. Nguyễn Văn A",
    gender: true,
    birthDate: DateTime(1980, 5, 12),
    specialty: MedicalSpecialty(id: 1, name: "Tim mạch"),
    qualifications: [
      Qualification(
        id: 1,
        name: "Bằng Bác sĩ Y khoa",
        specialty: "Đa khoa",
        issuer: "ĐH Y Hà Nội",
        type: "MD",
        effectiveDate: DateTime(2005, 9, 1),
      ),
      Qualification(
        id: 2,
        name: "Chứng chỉ chuyên khoa Tim mạch",
        specialty: "Tim mạch",
        issuer: "Bộ Y tế",
        type: "Specialization",
        effectiveDate: DateTime(2010, 6, 15),
      ),
    ],
  ),
  Physician(
    id: 1002,
    name: "BS. Trần Thị B",
    gender: false,
    birthDate: DateTime(1985, 8, 20),
    specialty: MedicalSpecialty(id: 2, name: "Da liễu"),
    qualifications: [
      Qualification(
        id: 3,
        name: "Bằng Bác sĩ Y khoa",
        specialty: "Đa khoa",
        issuer: "ĐH Y Dược TP.HCM",
        type: "MD",
        effectiveDate: DateTime(2009, 10, 1),
      ),
      Qualification(
        id: 4,
        name: "Chứng chỉ chuyên khoa Da liễu",
        specialty: "Da liễu",
        issuer: "Bộ Y tế",
        type: "Specialization",
        effectiveDate: DateTime(2014, 3, 20),
      ),
    ],
  ),
  Physician(
    id: 1003,
    name: "BS. Lê Văn C",
    gender: true,
    birthDate: DateTime(1990, 3, 5),
    specialty: MedicalSpecialty(id: 3, name: "Đa khoa"),
    qualifications: [
      Qualification(
        id: 5,
        name: "Bằng Bác sĩ Y khoa",
        specialty: "Đa khoa",
        issuer: "ĐH Y Hải Phòng",
        type: "MD",
        effectiveDate: DateTime(2016, 7, 1),
      ),
    ],
  ),
];