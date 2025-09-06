import 'package:hospital_app/features/view_service/domain/entities/service.dart';

import 'invoice.dart';

class ServiceInvoice {
  final int id;
  final Invoice invoice;
  final Service service;

  ServiceInvoice({
    required this.id,
    required this.invoice,
    required this.service,
  });
}
