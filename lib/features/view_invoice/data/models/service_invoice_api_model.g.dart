// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_invoice_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceInvoiceApiModel _$ServiceInvoiceApiModelFromJson(
        Map<String, dynamic> json) =>
    ServiceInvoiceApiModel(
      identifier: (json['identifier'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      service:
          ServiceApiModel.fromJson(json['service'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServiceInvoiceApiModelToJson(
        ServiceInvoiceApiModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'price': instance.price,
      'service': instance.service,
    };
