import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/appointment/domain/entities/create_appointment_prams.dart';
import 'package:hospital_app/features/appointment/presentation/cubit/appointment_cubit.dart';
import 'package:hospital_app/features/appointment/presentation/cubit/work_schedule_cubit.dart';
import 'package:hospital_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:hospital_app/features/auth/presentation/cubit/auth_state.dart';
import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';
import 'package:hospital_app/features/view_doctor/presentation/cubit/physician_cubit.dart';
import 'package:hospital_app/features/view_doctor/presentation/cubit/physician_state.dart';
import 'package:hospital_app/share/widgets/app_snack_bar.dart';
import 'package:hospital_app/share/widgets/custom_button.dart';
import 'package:hospital_app/share/widgets/custom_dropdown_search.dart';
import 'package:hospital_app/share/widgets/date_picker_field.dart';

import '../../domain/entities/shift.dart';
import '../../domain/entities/work_schedule.dart';
import '../cubit/shift_cubit.dart';
import '../cubit/shift_state.dart';
import '../cubit/specialty_cubit.dart';
import '../cubit/specialty_state.dart';
import '../cubit/work_schedule_state.dart';

class ScheduleByDoctorForm extends StatefulWidget {
  const ScheduleByDoctorForm({super.key});

  @override
  State<ScheduleByDoctorForm> createState() => _ScheduleByDoctorFormState();
}

class _ScheduleByDoctorFormState extends State<ScheduleByDoctorForm> {
  List<WorkSchedule> _workSchedules = [];
  Physician? _selectedDoctor;
  WorkSchedule? _selectedWorkSchedule;

  @override
  void initState() {
    super.initState();
    context.read<SpecialtyCubit>().getAllSpecialties();
    context.read<ShiftCubit>().getAllShifts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShiftCubit, ShiftState>(builder: (context, shiftState) {
      return BlocBuilder<SpecialtyCubit, SpecialtyState>(
          builder: (context1, specialtyState) {
        if (shiftState is! ShiftDone || specialtyState is! SpecialtyDone) {
          return const Center(child: CircularProgressIndicator());
        }
        return Column(
          children: [
            SizedBox(height: 8.sp),
            DropdownButtonFormField<int>(
              items: specialtyState.specialties
                  .map((e) => DropdownMenuItem(
                      key: Key(e.id.toString()),
                      value: e.id,
                      child: Text(e.name)))
                  .toList(),
              decoration: const InputDecoration(
                labelText: "Chọn chuyên khoa",
                border: OutlineInputBorder(),
              ),
              onChanged: (val) {
                setState(() {
                  context.read<PhysicianCubit>().setInit();
                  context.read<WorkScheduleCubit>().setInit();
                  _selectedDoctor = null;
                  _selectedWorkSchedule = null;
                  if (val != null) {
                    _workSchedules = [];
                    context
                        .read<PhysicianCubit>()
                        .getAllPhysiciansInSpecialty(val);
                  }
                });
              },
            ),
            SizedBox(height: 8.sp),
            BlocBuilder<PhysicianCubit, PhysicianState>(
                builder: (context, physicianState) {
              if (physicianState is! PhysicianDone ||
                  physicianState.physicians.isEmpty) {
                return CustomDropdownSearch<Physician>(
                  items: const [],
                  selectedItem: null,
                  itemAsString: (d) => d.name,
                  labelText: "Chọn bác sĩ",
                  onChanged: (_) {},
                  enabled: false,
                );
              }
              return CustomDropdownSearch<Physician>(
                items: physicianState.physicians,
                selectedItem: _selectedDoctor,
                itemAsString: (d) => d.name,
                labelText: "Chọn bác sĩ",
                hintText: "Tìm kiếm...",
                searchHint: "Nhập tên bác sĩ...",
                onChanged: (doctor) {
                  if (doctor != null) {
                    setState(() {
                      context.read<WorkScheduleCubit>().setInit();
                      context
                          .read<WorkScheduleCubit>()
                          .getStaffWorkSchedule(doctor);
                      _selectedWorkSchedule = null;
                      _workSchedules = [];
                      _selectedDoctor = doctor;
                    });
                  }
                },
              );
            }),
            SizedBox(height: 8.sp),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: BlocBuilder<WorkScheduleCubit, WorkScheduleState>(
                      builder: (context, workScheduleState) {
                    if (workScheduleState is! WorkScheduleDone) {
                      return const DatePickerField(
                        key: ValueKey("disabled"),
                        label: "Chọn ngày",
                        enabled: false,
                      );
                    }
                    return DatePickerField(
                      key: const ValueKey("enabled"),
                      label: "Chọn ngày",
                      allowedDates: workScheduleState.workSchedules
                          .map((e) => e.date)
                          .toList(),
                      onDateSelected: (date) {
                        setState(() {
                          _workSchedules = workScheduleState.workSchedules
                              .where((e) => e.date == date)
                              .toList();
                        });
                      },
                    );
                  }),
                ),
                SizedBox(width: 8.sp),
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
                              labelText: "Chọn ca",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      );
                    }
                    return DropdownButtonFormField<Shift>(
                      items: _workSchedules
                          .map((e) => DropdownMenuItem(
                              key: Key(e.shift!.id.toString()),
                              value: e.shift,
                              child: Text(e.shift!.name ?? "Không có")))
                          .toList(),
                      decoration: const InputDecoration(
                        labelText: "Chọn ca",
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
            CustomButton(text: "Đặt lịch", onPressed: () {
              onClickButton();
            })
          ],
        );
      });
    });
  }

  Future<void> onClickButton() async {
    if (_selectedDoctor == null) {
      AppSnackBar.error(context, "Chưa chọn bác sỹ");
      return;
    }
    if (_selectedWorkSchedule == null) {
      AppSnackBar.error(context, "Chưa chọn lịch");
      return;
    }
    if (context.read<AuthCubit>().state is AuthSuccess) {
      final authSuccess = context.read<AuthCubit>().state as AuthSuccess;
      final params = CreateAppointmentParams(
        workScheduleIdentifier: _selectedWorkSchedule!.id,
        physicianIdentifier: _selectedDoctor!.id,
        userIdentifier: authSuccess.user.id,
      );
      context.read<AppointmentCubit>().createAppointment(params);
    }
    reset();
  }

  void reset() {
    _workSchedules = [];
    _selectedDoctor = null;
    _selectedWorkSchedule = null;
    context.read<PhysicianCubit>().setInit();
    context.read<WorkScheduleCubit>().setInit();
  }
}
