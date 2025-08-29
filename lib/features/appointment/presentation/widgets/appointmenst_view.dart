import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/share/widgets/confirm_delete_dialog.dart';

class AppointmentsView extends StatelessWidget {
  const AppointmentsView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Replace with real data
    final dummyAppointments = [
      {"date": "28/08/2025", "doctor": "BS A", "shift": "Sáng"},
      {"date": "30/08/2025", "doctor": "BS B", "shift": "Chiều"},
      {"date": "20/09/2025", "doctor": "BS B", "shift": "Chiều"},
      {"date": "21/09/2025", "doctor": "BS B", "shift": "Chiều"},
    ];

    return ListView.builder(
      itemCount: dummyAppointments.length,
      itemBuilder: (context, index) {
        final appt = dummyAppointments[index];
        return Card(
          margin: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                child: ListTile(
                  leading: const Icon(Icons.calendar_today),
                  title: Text("Ngày: ${appt["date"]}"),
                  subtitle:
                      Text("Bác sĩ: ${appt["doctor"]}, Ca: ${appt["shift"]}"),
                ),
              ),
              // const Spacer(),
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: IconButton(
                  onPressed: () {
                    _onClickDeleteIcon(context);
                  },
                  iconSize: 32.sp,
                  icon: const Icon(Icons.delete_outlined),
                  color: Theme.of(context).unselectedWidgetColor,
                ),
              )
            ],
          ),
        );
      },
    );
  }

  void _onClickDeleteIcon(BuildContext context) {
    showDialog(context: context, builder: (ctx) {
      return ConfirmDeleteDialog(onConfirm: () {});
    });
  }
}
