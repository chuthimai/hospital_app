import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/appointment/domain/entities/enum/appointment_status.dart';
import 'package:hospital_app/features/appointment/presentation/cubit/appointment_cubit.dart';
import 'package:hospital_app/features/appointment/presentation/cubit/cancel_appointment_cubit.dart';
import 'package:hospital_app/features/appointment/presentation/cubit/cancel_appointment_state.dart';
import 'package:hospital_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:hospital_app/features/auth/presentation/cubit/auth_state.dart';
import 'package:hospital_app/share/utils/app_exception/time_of_day_formatter.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';
import 'package:hospital_app/share/widgets/app_snack_bar.dart';
import 'package:hospital_app/share/widgets/confirm_delete_dialog.dart';

import '../../domain/entities/appointment.dart';

class AppointmentCard extends StatelessWidget {
  final Appointment appointment;

  const AppointmentCard({required this.appointment, super.key});

  @override
  Widget build(BuildContext context) {
    final subtitle = StringBuffer();
    if (appointment.physician != null) {
      subtitle.write("Bác sĩ: ${appointment.physician?.name}\n");
    }
    subtitle.write("Ca: ${appointment.workSchedule.shift?.name} "
        "(${TimeOfDayFormatter.format24h(appointment.workSchedule.shift?.startTime)} - "
        "${TimeOfDayFormatter.format24h(appointment.workSchedule.shift?.endTime)})\n");
    subtitle.write("Trạng thái: ${appointment.status.toVietnamese()}");
    if (appointment.status == AppointmentStatus.cancelled) {
      subtitle.write(
          "\nNgày huỷ: ${DateFormatter.format(appointment.cancellationDate!)}");
      subtitle.write("\nLý do huỷ: ${appointment.reason ?? "Chưa rõ"}");
    }

    return BlocListener<CancelAppointmentCubit, CancelAppointmentState>(
      listener: (context, state) {
        if (state is CancelAppointmentSuccess) {
          AppSnackBar.success(context, "Huỷ cuộc hẹn thành công");
        } else if (state is CancelAppointmentFailure) {
          AppSnackBar.error(context, state.message);
        }
      },
      child: Card(
        key: Key(appointment.id.toString()),
        margin: const EdgeInsets.all(8),
        color: appointment.status == AppointmentStatus.booked
            ? Theme.of(context).cardColor
            : Theme.of(context).disabledColor,
        child: Row(
          children: [
            Expanded(
              child: Builder(builder: (context) {
                return ListTile(
                  leading: const Icon(Icons.calendar_month_outlined),
                  title: Text(
                    "Ngày: ${DateFormatter.format(appointment.workSchedule.date)}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(subtitle.toString()),
                );
              }),
            ),
            appointment.status == AppointmentStatus.booked
                ? Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: IconButton(
                      onPressed: () {
                        _onClickDeleteIcon(context);
                      },
                      tooltip: "Huỷ lịch hẹn",
                      iconSize: 32.sp,
                      icon: const Icon(
                        Icons.delete_rounded,
                        color: Color.fromRGBO(191, 49, 49, 1),
                      ),
                      color: Theme.of(context).unselectedWidgetColor,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }

  void _onClickDeleteIcon(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return ConfirmDeleteDialog(
              title: "Xác nhận huỷ",
              message: "Bạn có chắc chắn muốn huỷ lịch hẹn này không?",
              textConfirm: "Xác nhận",
              onConfirm: () {
                context
                    .read<CancelAppointmentCubit>()
                    .cancelAppointment(appointment);
              });
        });
  }
}
