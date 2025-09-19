/// FHIR ObservationCategoryCode
/// CodeSystem: http://terminology.hl7.org/CodeSystem/observation-category
enum ObservationCategoryCode {
  socialHistory,
  vitalSigns,
  imaging,
  laboratory,
  procedure,
  survey,
  exam,
  therapy,
  activity,
}

extension ObservationCategoryCodeVi on ObservationCategoryCode {
  String toVietnamese() {
    switch (this) {
      case ObservationCategoryCode.socialHistory:
        return "Tiền sử xã hội";
      case ObservationCategoryCode.vitalSigns:
        return "Dấu hiệu sinh tồn";
      case ObservationCategoryCode.imaging:
        return "Chẩn đoán hình ảnh";
      case ObservationCategoryCode.laboratory:
        return "Xét nghiệm labo";
      case ObservationCategoryCode.procedure:
        return "Thủ thuật";
      case ObservationCategoryCode.survey:
        return "Khảo sát / bảng hỏi";
      case ObservationCategoryCode.exam:
        return "Khám lâm sàng";
      case ObservationCategoryCode.therapy:
        return "Điều trị / liệu pháp";
      case ObservationCategoryCode.activity:
        return "Hoạt động bệnh nhân";
    }
  }
}
