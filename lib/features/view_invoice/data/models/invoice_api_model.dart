import 'package:hospital_app/features/view_invoice/domain/entities/enum/invoice_status.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/invoice.dart';
import 'service_invoice_api_model.dart';

part 'invoice_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class InvoiceApiModel {
  final int identifier;
  final bool status;
  final DateTime? createdTime;
  final List<ServiceInvoiceApiModel> invoiceServices;

  InvoiceApiModel({
    required this.identifier,
    required this.status,
    this.createdTime,
    this.invoiceServices = const [],
  });

  factory InvoiceApiModel.fromJson(Map<String, dynamic> json) =>
      _$InvoiceApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceApiModelToJson(this);

  /// chuyển về domain entity
  Invoice toEntity() {
    return Invoice(
      id: identifier,
      status: status ? InvoiceStatus.balanced : InvoiceStatus.issued,
      createdTime: createdTime,
      serviceInvoices: invoiceServices.map((e) => e.toEntity()).toList(),
    );
  }

  /// tạo từ entity domain
  factory InvoiceApiModel.fromEntity(Invoice entity) {
    return InvoiceApiModel(
      identifier: entity.id,
      status: entity.status == InvoiceStatus.balanced ? true : false,
      createdTime: entity.createdTime,
      invoiceServices: entity.serviceInvoices
          .map((e) => ServiceInvoiceApiModel.fromEntity(e))
          .toList(),
    );
  }
}
