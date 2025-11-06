import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';

import '../../domain/entities/prescription.dart';

class PrescriptionCard extends StatelessWidget {
  final Prescription prescription;

  const PrescriptionCard(this.prescription, {super.key});


  @override
  Widget build(BuildContext context) {
    return Card(
      key: ValueKey(prescription.id),
      margin: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 6.sp),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: InkWell(
        child: ListTile(
          title: Text(
            "Đơn thuốc khám ${prescription.performer?.specialty?.name}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
              "Ngày kê đơn: ${DateFormatter.format(prescription.createdTime)}"),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        onTap: () => context.push(
          '/prescriptions/${prescription.id}',
          extra: prescription,
        ),
      ),
    );
  }

}