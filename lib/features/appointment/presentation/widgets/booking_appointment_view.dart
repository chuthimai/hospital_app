import 'package:flutter/material.dart';
import 'schedule_by_date_form.dart';
import 'schedule_by_doctor_form.dart';

class BookingAppointmentView extends StatefulWidget {
  const BookingAppointmentView({super.key});

  @override
  State<BookingAppointmentView> createState() => _BookingAppointmentViewState();
}

class _BookingAppointmentViewState extends State<BookingAppointmentView> {
  // 0 = Khám theo lịch, 1 = Khám theo bác sĩ
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 8,
            children: [
              ChoiceChip(
                label: const Text("Khám theo lịch"),
                selected: _selectedTab == 0,
                color: MaterialStateProperty.resolveWith<Color?>(
                      (states) {
                    if (states.contains(MaterialState.selected)) {
                      return Theme.of(context).cardColor;
                    }
                    if (states.contains(MaterialState.pressed)) {
                      return Theme.of(context).splashColor;
                    }
                    return Theme.of(context).scaffoldBackgroundColor;
                  },
                ),
                onSelected: (val) {
                  setState(() => _selectedTab = 0);
                },
              ),
              ChoiceChip(
                label: const Text("Khám theo bác sĩ"),
                selected: _selectedTab == 1,
                color: MaterialStateProperty.resolveWith<Color?>(
                      (states) {
                    if (states.contains(MaterialState.selected)) {
                      return Theme.of(context).cardColor;
                    }
                    if (states.contains(MaterialState.pressed)) {
                      return Theme.of(context).splashColor;
                    }
                    return Theme.of(context).scaffoldBackgroundColor;
                  },
                ),
                onSelected: (val) {
                  setState(() => _selectedTab = 1);
                },
              ),
            ],
          ),
        ),

        const Divider(),

        /// Form thay đổi theo chip
        Expanded(
            child: SingleChildScrollView(
          child: _selectedTab == 0
              ? const ScheduleByDateForm()
              : const ScheduleByDoctorForm(),
        ),),
      ],
    );
  }
}
