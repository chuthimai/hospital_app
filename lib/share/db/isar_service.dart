import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  static Isar? _isar;

  static Future<Isar> get instance async {
    if (_isar != null) return _isar!;
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [
        // HospitalDbModelSchema,
        // SmartContractDbModelSchema,
      ],
      directory: dir.path,
      inspector: true,
    );
    return _isar!;
  }
}
