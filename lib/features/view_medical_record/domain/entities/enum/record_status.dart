/// RecordStatus - trạng thái bản ghi (theo FHIR Common Codes)
/// CodeSystem: http://terminology.hl7.org/CodeSystem/completeness
enum RecordStatus {
  complete,
  incomplete,
}

extension RecordStatusVi on RecordStatus {
  String toVietnamese() {
    switch (this) {
      case RecordStatus.complete:
        return "Hoàn tất";
      case RecordStatus.incomplete:
        return "Chưa hoàn tất";
    }
  }
}
