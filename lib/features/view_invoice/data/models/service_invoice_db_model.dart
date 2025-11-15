import 'package:isar/isar.dart';
import 'package:hospital_app/features/view_service/data/models/service_db_model.dart';
import '../../domain/entities/service_invoice.dart';

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

  /// Convert database model -> domain entity
  Future<ServiceInvoice> toEntity() async{
    await service.load();

    return ServiceInvoice(
      id: id,
      service: await service.value?.toEntity(),
      price: price,
    );
  }

  /// Convert domain entity -> database model
  static ServiceInvoiceDbModel fromEntity(ServiceInvoice entity) {
    final model = ServiceInvoiceDbModel(
      id: entity.id,
      price: entity.price,
    );

    if (entity.service != null) {
      model.service.value = ServiceDbModel.fromEntity(entity.service!);
    }

    return model;
  }
}
