import 'enum/snomedct_form_codes.dart';

class Medication {
  final int _id;
  final String _name;
  final SNOMEDCTFormCodes _doseForm;

  Medication({
    required int id,
    required String name,
    required SNOMEDCTFormCodes doseForm,
  }) : _id = id,
        _name = name,
        _doseForm = doseForm;

  int get id => _id;
  String get name => _name;
  SNOMEDCTFormCodes get doseForm => _doseForm;
}