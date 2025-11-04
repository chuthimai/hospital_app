import 'package:hospital_app/features/view_service/data/models/service_db_model.dart';
import 'package:isar/isar.dart';

part 'service_invoice_db_model.g.dart';

@collection
class ServiceInvoiceDbModel {
  Id id;

  final service = IsarLink<ServiceDbModel>();

  double price = 0.0;

  ServiceInvoiceDbModel({
    required this.id,
    this.price = 0.0,
  });
}
