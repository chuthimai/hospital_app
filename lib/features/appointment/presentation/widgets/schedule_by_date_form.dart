import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/appointment/domain/entities/create_appointment_prams.dart';
import 'package:hospital_app/features/appointment/presentation/cubit/appointment_cubit.dart';
import 'package:hospital_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:hospital_app/features/auth/presentation/cubit/auth_state.dart';
import 'package:hospital_app/share/utils/app_exception/time_of_day_formatter.dart';
import 'package:hospital_app/share/widgets/app_snack_bar.dart';
import 'package:hospital_app/share/widgets/custom_button.dart';
import 'package:hospital_app/share/widgets/date_picker_field.dart';

import '../../domain/entities/shift.dart';
import '../../domain/entities/work_schedule.dart';
import '../cubit/work_schedule_cubit.dart';
import '../cubit/work_schedule_state.dart';

class ScheduleByDateForm extends StatefulWidget {
  const ScheduleByDateForm({super.key});

  @override
  State<ScheduleByDateForm> createState() => _ScheduleByDateFormState();
}

class _ScheduleByDateFormState extends State<ScheduleByDateForm> {
  List<Shift> _shifts = [];
  List<WorkSchedule> _workSchedules = [];
  WorkSchedule? _selectedWorkSchedule;

  @override
  void initState() {
    super.initState();
    context.read<WorkScheduleCubit>().setInit();
    context.read<WorkScheduleCubit>().getWorkSchedule();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkScheduleCubit, WorkScheduleState>(
        builder: (context, workScheduleState) {
      if (workScheduleState is! WorkScheduleDone) {
        return const Center(child: CircularProgressIndicator());
      }

      return SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: DatePickerField(
                      label: "Ngày",
                      allowedDates: workScheduleState.workSchedules
                          .map((e) => e.date)
                          .toList(),
                      onDateSelected: (date) {
                        setState(() {
                          _workSchedules = workScheduleState.workSchedules
                              .where((e) => e.date == date)
                              .toList();

                          _shifts = workScheduleState.workSchedules
                              .map((e) => e.shift!)
                              .fold<Map<int, Shift>>({}, (map, shift) {
                                map[shift.id] =
                                    shift;
                                return map;
                              })
                              .values
                              .toList();
                        });
                      },
                    )),
                const SizedBox(width: 8),
                Expanded(
                  flex: 1,
                  child: Builder(builder: (context) {
                    if (_workSchedules.isEmpty) {
                      return IgnorePointer(
                        ignoring: true,
                        child: Opacity(
                          opacity: 0.6,
                          child: DropdownButtonFormField<Shift>(
                            items: const [],
                            onChanged: (val) {},
                            decoration: const InputDecoration(
                              labelText: "Ca",
                              hintText: "Chọn ca",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      );
                    }
                    return DropdownButtonFormField<Shift>(
                      items: _shifts
                          .map((e) => DropdownMenuItem(
                                key: Key(e.id.toString()),
                                value: e,
                                child: Text(
                                  e.name == null
                                      ? "Không có"
                                      : "${e.name} \n("
                                          "${TimeOfDayFormatter.format24h(e.startTime)} - "
                                          "${TimeOfDayFormatter.format24h(e.endTime)})\n"
                                          "-------------------------",
                                ),
                              ))
                          .toList(),
                      decoration: const InputDecoration(
                        labelText: "Ca",
                        hintText: "Chọn ca",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (val) {
                        if (val != null) {
                          _selectedWorkSchedule = _workSchedules
                              .firstWhere((e) => e.shift!.id == val.id);
                        }
                      },
                    );
                  }),
                ),
              ],
            ),
            const SizedBox(height: 12),
            CustomButton(text: "Đặt lịch", onPressed: onClickButton)
          ],
        ),
      );
    });
  }

  Future<void> onClickButton() async {
    if (_selectedWorkSchedule == null) {
      AppSnackBar.error(context, "Chưa chọn lịch");
      return;
    }
    if (context.read<AuthCubit>().state is AuthSuccess) {
      final authSuccess = context.read<AuthCubit>().state as AuthSuccess;
      final params = CreateAppointmentParams(
        workScheduleIdentifier: _selectedWorkSchedule!.id,
        userIdentifier: authSuccess.user.id,
      );
      context.read<AppointmentCubit>().createAppointment(params);
    }
    reset();
  }

  void reset() {
    setState(() {
      _workSchedules = [];
      _selectedWorkSchedule = null;
      _shifts = [];
    });
  }
}
