import 'package:hospital_app/share/db/isar_service.dart';
import 'package:isar/isar.dart';
import '../models/appointment_db_model.dart';

abstract class AppointmentLocalDataSource {
  Future<void> updateAppointment(AppointmentDbModel appointment);
  Future<List<AppointmentDbModel>> getAppointments();
  Future<void> deleteAllAppointments();
  Future<void> saveAppointment(AppointmentDbModel appointment);
  Future<void> saveAppointments(List<AppointmentDbModel> appointments);
}

class AppointmentLocalDataSourceImpl implements AppointmentLocalDataSource {
  Future<Isar> get _isar async => await IsarService.instance;

  @override
  Future<void> updateAppointment(AppointmentDbModel appointment) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.appointmentDbModels.put(appointment);
    });
  }

  @override
  Future<void> deleteAllAppointments() async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.appointmentDbModels.clear();
    });
  }

  @override
  Future<List<AppointmentDbModel>> getAppointments() async {
    final isar = await _isar;
    return await isar.appointmentDbModels.where().findAll();
  }

  @override
  Future<void> saveAppointment(AppointmentDbModel appointment) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.appointmentDbModels.put(appointment);
    });
  }

  @override
  Future<void> saveAppointments(List<AppointmentDbModel> appointments) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.appointmentDbModels.putAll(appointments);
    });
  }
}
