import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/share/utils/app_exception/time_of_day_formatter.dart';
import 'package:hospital_app/share/widgets/custom_button.dart';
import 'package:hospital_app/share/widgets/date_picker_field.dart';

import '../../domain/entities/shift.dart';
import '../cubit/shift_cubit.dart';
import '../cubit/shift_state.dart';

class ScheduleByDateForm extends StatefulWidget {
  const ScheduleByDateForm({super.key});

  @override
  State<ScheduleByDateForm> createState() => _ScheduleByDateFormState();
}

class _ScheduleByDateFormState extends State<ScheduleByDateForm> {
  @override
  void initState() {
    super.initState();
    context.read<ShiftCubit>().getAllShifts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShiftCubit, ShiftState>(builder: (context, shiftState) {
      if (shiftState is! ShiftDone) {
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
                    label: "Chọn ngày",
                    onDateSelected: (date) {
                      print("Ngày được chọn: $date");
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 1,
                  child: DropdownButtonFormField<Shift>(
                    items: shiftState.shifts
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
                      // TODO: _selectedShift
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            CustomButton(text: "Đặt lịch", onPressed: () {})
          ],
        ),
      );
    });
  }
}
