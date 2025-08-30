import 'package:hospital_app/features/view_prescription/data/models/medication_db_model.dart';
import 'package:hospital_app/features/view_prescription/data/models/prescribed_medication_db_model.dart';
import 'package:hospital_app/features/view_prescription/data/models/prescription_db_model.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  static Isar? _isar;

  static Future<Isar> get instance async {
    if (_isar != null) return _isar!;
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [
        PrescriptionDbModelSchema,
        PrescribedMedicationDbModelSchema,
        MedicationDbModelSchema,
      ],
      directory: dir.path,
      inspector: true,
    );
    return _isar!;
  }
}
