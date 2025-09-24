import 'package:hospital_app/features/appointment/data/models/work_schedule_api_model.dart';
import 'package:hospital_app/share/constants/path_api.dart';
import 'package:hospital_app/share/dio/remote_service.dart';

abstract class WorkScheduleRemoteDataSource {
  Future<List<WorkScheduleApiModel>> getStaffWordSchedule(int doctorId);
}

class WorkScheduleRemoteDataSourceImpl implements WorkScheduleRemoteDataSource {
  @override
  Future<List<WorkScheduleApiModel>> getStaffWordSchedule(int doctorId) async {
    try {
      final remote = RemoteService();
      final response = await remote.get(
        PathApi.workSchedulesByPhysician,
        data: {"physicianIdentifier": doctorId},
      );
      final List<dynamic> jsonList = response.data as List<dynamic>;
      return jsonList
          .map((json) => WorkScheduleApiModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
