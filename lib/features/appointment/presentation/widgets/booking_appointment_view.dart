import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';
import 'schedule_by_date_form.dart';
import 'schedule_by_doctor_form.dart';

class BookingAppointmentView extends StatefulWidget {
  // 0 = Khám theo lịch, 1 = Khám theo bác sĩ
  final Physician? doctor;

  const BookingAppointmentView({
    super.key,
    this.doctor,
  });

  @override
  State<BookingAppointmentView> createState() => _BookingAppointmentViewState();
}

class _BookingAppointmentViewState extends State<BookingAppointmentView> {
  int _selectedTab = 0;

  @override
  void initState() {
    super.initState();
    if (widget.doctor != null) _selectedTab = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.sp),
          child: Wrap(
            spacing: 8,
            children: [
              ChoiceChip(
                label: Text(
                  "Khám theo lịch",
                  style: TextStyle(fontSize: 13.sp),
                ),
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
                label: Text(
                  "Khám theo bác sĩ",
                  style: TextStyle(fontSize: 13.sp),
                ),
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
                : ScheduleByDoctorForm(doctor: widget.doctor,),
          ),
        ),
      ],
    );
  }
}
