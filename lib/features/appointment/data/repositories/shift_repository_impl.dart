import 'package:hospital_app/features/appointment/data/datasources/shift_local_data_source.dart';
import 'package:hospital_app/features/appointment/data/datasources/shift_remote_data_source.dart';
import 'package:hospital_app/features/appointment/data/models/shift_db_model.dart';
import 'package:hospital_app/features/appointment/domain/entities/shift.dart';
import 'package:hospital_app/share/utils/app_logger.dart';

import '../../domain/repositories/shift_repository.dart';

class ShiftRepositoryImpl implements ShiftRepository {
  final ShiftLocalDataSource _localDataSource;
  final ShiftRemoteDataSource _remoteDataSource;

  ShiftRepositoryImpl({
    required localDataSource,
    required remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<void> deleteAllShifts() async {
    try {
      await _localDataSource.deleteAllShifts();
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
  }

  @override
  Future<void> saveShift(Shift shift) async {
    try {
      await _localDataSource.saveShift(ShiftDbModel.fromEntity(shift));
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
  }

  @override
  Future<List<Shift>> getAllShifts() async {
    try {
      final shiftsApi = await _remoteDataSource.getAllShifts();
      if (shiftsApi.isNotEmpty) {
        final shiftsDb = shiftsApi
            .map((e) => ShiftDbModel.fromEntity(e.toEntity()))
            .toList();
        await _localDataSource.saveShifts(shiftsDb);
      }
      final shiftsDb = await _localDataSource.getAllShifts();
      return shiftsDb.map((e) => e.toEntity()).toList();
    } catch (e) {
      AppLogger().error("Remote/Local error: $e");
    }
    return [];
  }

  @override
  Future<Shift?> getShift(int shiftId) async {
    try {
      final shiftDb = await _localDataSource.getShift(shiftId);
      return shiftDb?.toEntity();
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
    return null;
  }

}
