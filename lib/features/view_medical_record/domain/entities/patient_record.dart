import 'package:hospital_app/features/view_medical_record/domain/entities/enum/record_status.dart';
import 'package:hospital_app/features/view_prescription/domain/entities/prescription.dart';

import 'service_report.dart';

class PatientRecord implements Comparable<PatientRecord> {
  final int _id;
  final RecordStatus _status;
  final DateTime _createdTime;
  final List<ServiceReport> _serviceReports;
  final Prescription? _prescription;
  final String? _pathUrl;
  String? _pathFilePdf;

  PatientRecord({
    required int id,
    RecordStatus status = RecordStatus.incomplete,
    required DateTime createdTime,
    List<ServiceReport> serviceReports = const [],
    Prescription? prescription,
    String? pathUrl,
    String? pathFilePdf,
  }) : _id = id,
        _status = status,
        _createdTime = createdTime,
        _serviceReports = serviceReports,
        _prescription = prescription,
        _pathUrl = pathUrl,
        _pathFilePdf = pathFilePdf;

  int get id => _id;
  RecordStatus get status => _status;
  DateTime get createdTime => _createdTime;
  List<ServiceReport> get serviceReports => _serviceReports;
  Prescription? get prescription => _prescription;
  String? get pathUrl => _pathUrl;
  String? get pathFilePdf => _pathFilePdf;

  set pathFilePdf(String? newPathFilePdf) {
    _pathFilePdf = newPathFilePdf;
  }

  @override
  String toString() {
    return 'PatientRecord{\n'
        'id: $_id, \n'
        'status: $_status, \n'
        'pathUrl: $_pathUrl, \n'
        'pathFilePdf: $_pathFilePdf, \n'
        'serviceReports: ${_serviceReports.length}\n'
        '}';
  }

  @override
  int compareTo(PatientRecord other) {
    if (_status == RecordStatus.incomplete && other._status != RecordStatus.incomplete) {
      return -1;
    }
    if (_status != RecordStatus.incomplete && other._status == RecordStatus.incomplete) {
      return 1;
    }
    return other._id.compareTo(_id);
  }


}