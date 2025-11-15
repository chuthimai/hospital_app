// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceApiModel _$InvoiceApiModelFromJson(Map<String, dynamic> json) =>
    InvoiceApiModel(
      identifier: (json['identifier'] as num).toInt(),
      status: json['status'] as bool,
      createdTime: json['createdTime'] == null
          ? null
          : DateTime.parse(json['createdTime'] as String),
      invoiceServices: (json['invoiceServices'] as List<dynamic>?)
              ?.map((e) =>
                  ServiceInvoiceApiModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$InvoiceApiModelToJson(InvoiceApiModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'status': instance.status,
      'createdTime': instance.createdTime?.toIso8601String(),
      'invoiceServices':
          instance.invoiceServices.map((e) => e.toJson()).toList(),
    };
