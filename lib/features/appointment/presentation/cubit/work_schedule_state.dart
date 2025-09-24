import '../../domain/entities/work_schedule.dart';

abstract class WorkScheduleState {}

class WorkScheduleInitial extends WorkScheduleState {}
class WorkScheduleDone extends WorkScheduleState {
  final List<WorkSchedule> workSchedules;

  WorkScheduleDone(this.workSchedules);
}