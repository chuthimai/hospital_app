// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceApiModel _$InvoiceApiModelFromJson(Map<String, dynamic> json) =>
    InvoiceApiModel(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      createdTime: json['createdTime'] == null
          ? null
          : DateTime.parse(json['createdTime'] as String),
      serviceInvoices: (json['serviceInvoices'] as List<dynamic>)
          .map(
              (e) => ServiceInvoiceApiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InvoiceApiModelToJson(InvoiceApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'createdTime': instance.createdTime?.toIso8601String(),
      'serviceInvoices':
          instance.serviceInvoices.map((e) => e.toJson()).toList(),
    };
