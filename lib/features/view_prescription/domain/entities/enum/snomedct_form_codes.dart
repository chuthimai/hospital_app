/// SNOMED CT Medication Form Codes (FHIR simplified)
/// ValueSet: http://hl7.org/fhir/ValueSet/medication-form-codes
/// Based on SNOMED CT July 2022
enum SNOMEDCTFormCodes {
  tablet(
    code: "385055001",
    display: "Tablet",
    vietnamese: "Viên nén",
  ),
  chewableTablet(
    code: "66076007",
    display: "Chewable tablet",
    vietnamese: "Viên nhai",
  ),
  capsule(
    code: "385057009",
    display: "Capsule",
    vietnamese: "Viên nang",
  ),
  oralSolution(
    code: "385023001",
    display: "Oral solution",
    vietnamese: "Dung dịch uống",
  ),
  oralSuspension(
    code: "385024007",
    display: "Oral suspension",
    vietnamese: "Hỗn dịch uống",
  ),
  oralDrops(
    code: "385018001",
    display: "Oral drops",
    vietnamese: "Giọt uống",
  ),
  injectionSolution(
    code: "385219001",
    display: "Solution for injection",
    vietnamese: "Dung dịch tiêm",
  ),
  cream(
    code: "385108007",
    display: "Cream",
    vietnamese: "Kem bôi",
  ),
  ointment(
    code: "385100003",
    display: "Ointment",
    vietnamese: "Thuốc mỡ",
  ),
  inhalationPowder(
    code: "385133007",
    display: "Inhalation powder",
    vietnamese: "Bột hít",
  );

  final String code;
  final String display;
  final String vietnamese;

  const SNOMEDCTFormCodes({
    required this.code,
    required this.display,
    required this.vietnamese,
  });
}

extension SNOMEDCTFormCodesExt on SNOMEDCTFormCodes {
  /// Parse từ SNOMED code sang enum
  static SNOMEDCTFormCodes fromCode(String? code) {
    return SNOMEDCTFormCodes.values.firstWhere(
          (e) => e.code == code,
      orElse: () => SNOMEDCTFormCodes.tablet,
    );
  }

  /// Lấy code SNOMED
  String get snomedCode => code;

  /// Lấy tên tiếng Anh
  String get displayName => display;

  /// Lấy tên tiếng Việt
  String get viName => vietnamese;
}
