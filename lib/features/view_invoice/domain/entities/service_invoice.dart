import 'package:hospital_app/features/view_service/domain/entities/service.dart';
import 'package:isar/isar.dart';

import 'invoice.dart';

class ServiceInvoice {
  final int id;
  final Invoice? invoice;
  final Service? service;
  final double price;

  ServiceInvoice({
    required this.id,
    this.invoice,
    this.service,
    this.price=0.0,
  });
}
