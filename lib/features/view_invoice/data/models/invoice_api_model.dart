import 'package:hospital_app/features/view_invoice/domain/entities/enum/invoice_status.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/invoice.dart';
import 'service_invoice_api_model.dart';

part 'invoice_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class InvoiceApiModel {
  final int id;
  final String status;
  final DateTime? createdTime;
  final List<ServiceInvoiceApiModel> serviceInvoices;

  InvoiceApiModel({
    required this.id,
    required this.status,
    this.createdTime,
    required this.serviceInvoices,
  });

  factory InvoiceApiModel.fromJson(Map<String, dynamic> json) =>
      _$InvoiceApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceApiModelToJson(this);

  /// chuyển về domain entity
  Invoice toEntity() {
    return Invoice(
      id: id,
      status: InvoiceStatusParser.fromString(status),
      createdTime: createdTime,
      serviceInvoices: serviceInvoices.map((e) => e.toEntity()).toList(),
    );
  }

  /// tạo từ entity domain
  factory InvoiceApiModel.fromEntity(Invoice entity) {
    return InvoiceApiModel(
      id: entity.id,
      status: entity.status.name,
      createdTime: entity.createdTime,
      serviceInvoices: entity.serviceInvoices
          .map((e) => ServiceInvoiceApiModel.fromEntity(e))
          .toList(),
    );
  }
}
