import 'package:hospital_app/features/view_service/domain/entities/service.dart';

import 'invoice.dart';

class ServiceInvoice {
  final int _id;
  final Invoice? _invoice;
  final Service? _service;
  final double _price;

  ServiceInvoice({
    required int id,
    Invoice? invoice,
    Service? service,
    double price = 0.0,
  }) : _id = id,
        _invoice = invoice,
        _service = service,
        _price = price;

  int get id => _id;
  Invoice? get invoice => _invoice;
  Service? get service => _service;
  double get price => _price;
}