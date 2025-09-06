import 'package:isar/isar.dart';

class Invoice {
  final int id;
  final String currency;
  final float totalGross;
  final int status;
  final DateTime createdTime;

  Invoice({
    required this.id,
    this.currency = "VND",
    required this.totalGross,
    required this.status,
    required this.createdTime,
  });
}
