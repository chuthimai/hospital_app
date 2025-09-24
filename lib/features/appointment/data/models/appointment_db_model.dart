import 'package:hospital_app/features/appointment/domain/entities/enum/appointment_status.dart';
import 'package:hospital_app/features/view_doctor/data/models/physician_db_model.dart';
import 'package:isar/isar.dart';
import '../../domain/entities/appointment.dart';
import 'work_schedule_db_model.dart';

part 'appointment_db_model.g.dart';

@collection
class AppointmentDbModel {
  Id id;

  late String status;
  String? reason;
  DateTime? cancellationDate;

  final workSchedule = IsarLink<WorkScheduleDbModel>();
  final physician = IsarLink<PhysicianDbModel>();

  AppointmentDbModel({
    required this.id,
    required this.status,
    this.reason,
    this.cancellationDate,
  });

  Future<Appointment> toEntity() async {
    await workSchedule.load();
    await physician.load();
    final workScheduleEntity = await workSchedule.value!.toEntity();
    final physicianEntity = await physician.value?.toEntity();

    return Appointment(
      id: id,
      status: AppointmentStatusExchange.fromString(status),
      reason: reason,
      cancellationDate: cancellationDate,
      workSchedule: workScheduleEntity,
      physician: physicianEntity,
    );
  }

  factory AppointmentDbModel.fromEntity(Appointment entity) {
    final model = AppointmentDbModel(
      id: entity.id,
      status: entity.status.name,
      reason: entity.reason,
      cancellationDate: entity.cancellationDate,
    );

    model.workSchedule.value =
        WorkScheduleDbModel.fromEntity(entity.workSchedule);

    if (entity.physician != null) {
      model.physician.value = PhysicianDbModel.fromEntity(entity.physician!);
    }

    return model;
  }
}
