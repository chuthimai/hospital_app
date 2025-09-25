import 'package:isar/isar.dart';
import '../../domain/entities/enum/snomedct_form_codes.dart';
import '../../domain/entities/medication.dart';

part 'medication_db_model.g.dart';

@collection
class MedicationDbModel {
  Id id = 0;
  late String name;
  late String doseForm;

  MedicationDbModel({
    required this.id,
    required this.name,
    required this.doseForm,
  });

  factory MedicationDbModel.fromEntity(Medication medication) =>
      MedicationDbModel(
        id: medication.id,
        name: medication.name,
        doseForm: medication.doseForm.name,
      );

  Medication toEntity() => Medication(
    id: id,
    name: name,
    doseForm: SNOMEDCTFormCodesParser.fromCode(doseForm),
  );
}
