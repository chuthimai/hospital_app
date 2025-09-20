import 'package:hospital_app/features/view_doctor/data/datasource/qualification_remote_data_source.dart';
import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';

import 'package:hospital_app/features/view_doctor/domain/entities/qualification.dart';
import 'package:hospital_app/share/utils/app_logger.dart';

import '../../domain/repositories/qualification_repository.dart';

class QualificationRepositoryImpl implements QualificationRepository {
  final QualificationRemoteDataSource _remoteDataSource;

  QualificationRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<Qualification>> getQualificationOfPhysician(Physician physician) async {
    try {
      final qualificationsApi = await _remoteDataSource.getQualificationOfPhysician(physician.id);
      return qualificationsApi.map((e) => e.toEntity()).toList();
    } catch(e) {
      AppLogger().error("Remote error: $e");
    }
    return [];
  }

}