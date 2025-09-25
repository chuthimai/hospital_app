/// SNOMEDCTFormCodes - Dạng bào chế thuốc (FHIR)
/// ValueSet: http://hl7.org/fhir/ValueSet/medication-form-codes
/// CodeSystem: SNOMED CT
enum SNOMEDCTFormCodes {
  tablet,
  chewableTablet,
  capsule,
  oralSolution,
  oralSuspension,
  oralDrops,
  injectionSolution,
  cream,
  ointment,
  inhalationPowder,
}

extension SNOMEDCTFormCodesVi on SNOMEDCTFormCodes {
  String toVietnamese() {
    switch (this) {
      case SNOMEDCTFormCodes.tablet:
        return "Viên nén";
      case SNOMEDCTFormCodes.chewableTablet:
        return "Viên nhai";
      case SNOMEDCTFormCodes.capsule:
        return "Viên nang";
      case SNOMEDCTFormCodes.oralSolution:
        return "Dung dịch uống";
      case SNOMEDCTFormCodes.oralSuspension:
        return "Hỗn dịch uống";
      case SNOMEDCTFormCodes.oralDrops:
        return "Giọt uống";
      case SNOMEDCTFormCodes.injectionSolution:
        return "Dung dịch tiêm";
      case SNOMEDCTFormCodes.cream:
        return "Kem bôi";
      case SNOMEDCTFormCodes.ointment:
        return "Thuốc mỡ";
      case SNOMEDCTFormCodes.inhalationPowder:
        return "Bột hít";
    }
  }
}

/// Parse từ chuỗi tiếng Anh (code) sang enum
extension SNOMEDCTFormCodesParser on SNOMEDCTFormCodes {
  static SNOMEDCTFormCodes fromCode(String? code) {
    switch (code) {
      case "tablet":
        return SNOMEDCTFormCodes.tablet;
      case "chewableTablet":
        return SNOMEDCTFormCodes.chewableTablet;
      case "capsule":
        return SNOMEDCTFormCodes.capsule;
      case "oralSolution":
        return SNOMEDCTFormCodes.oralSolution;
      case "oralSuspension":
        return SNOMEDCTFormCodes.oralSuspension;
      case "oralDrops":
        return SNOMEDCTFormCodes.oralDrops;
      case "injectionSolution":
        return SNOMEDCTFormCodes.injectionSolution;
      case "cream":
        return SNOMEDCTFormCodes.cream;
      case "ointment":
        return SNOMEDCTFormCodes.ointment;
      case "inhalationPowder":
        return SNOMEDCTFormCodes.inhalationPowder;
      default:
        return SNOMEDCTFormCodes.tablet;
    }
  }
}

