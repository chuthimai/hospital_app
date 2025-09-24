import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/appointment/domain/repositories/work_schedule_repository.dart';
import 'package:hospital_app/features/appointment/presentation/cubit/work_schedule_state.dart';

import '../../../view_doctor/domain/entities/physician.dart';

class WorkScheduleCubit extends Cubit<WorkScheduleState> {
  final WorkScheduleRepository repo;
  WorkScheduleCubit(this.repo) : super(WorkScheduleInitial());

  Future<void> getStaffWorkSchedule(Physician doctor) async {
    emit(WorkScheduleInitial());
    final workSchedules = await repo.getStaffWordSchedule(doctor);
    emit(WorkScheduleDone(workSchedules));
  }

  void setInit() {
    emit(WorkScheduleInitial());
  }
}