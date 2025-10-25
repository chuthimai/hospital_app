// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_record_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientRecordApiModel _$PatientRecordApiModelFromJson(
        Map<String, dynamic> json) =>
    PatientRecordApiModel(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      createTime: DateTime.parse(json['createTime'] as String),
      serviceReports: (json['serviceReports'] as List<dynamic>?)
              ?.map((e) =>
                  ServiceReportApiModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      prescription: json['prescription'] == null
          ? null
          : PrescriptionApiModel.fromJson(
              json['prescription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PatientRecordApiModelToJson(
        PatientRecordApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'createTime': instance.createTime.toIso8601String(),
      'serviceReports': instance.serviceReports.map((e) => e.toJson()).toList(),
      'prescription': instance.prescription?.toJson(),
    };
