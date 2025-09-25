import 'enum/snomedct_form_codes.dart';

class Medication {
  final int id;
  final String name;
  final SNOMEDCTFormCodes doseForm;

  Medication({
    required this.id,
    required this.name,
    required this.doseForm,
  });
}
