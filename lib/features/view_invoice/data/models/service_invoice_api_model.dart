import 'package:json_annotation/json_annotation.dart';
import '../../../view_service/data/models/service_api_model.dart';
import '../../domain/entities/service_invoice.dart';

part 'service_invoice_api_model.g.dart';

@JsonSerializable()
class ServiceInvoiceApiModel {
  final int id;
  final double price;
  final ServiceApiModel service;

  ServiceInvoiceApiModel({
    required this.id,
    required this.price,
    required this.service,
  });

  factory ServiceInvoiceApiModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceInvoiceApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceInvoiceApiModelToJson(this);

  /// chuyển về domain entity
  ServiceInvoice toEntity() {
    return ServiceInvoice(
      id: id,
      service: service.toEntity(),
      price: price,
    );
  }

  /// tạo từ entity domain
  factory ServiceInvoiceApiModel.fromEntity(ServiceInvoice entity) {
    return ServiceInvoiceApiModel(
      id: entity.id,
      price: entity.price,
      service: ServiceApiModel.fromEntity(entity.service),
    );
  }
}
