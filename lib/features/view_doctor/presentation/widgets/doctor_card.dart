import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../domain/entities/physician.dart';

class DoctorCard extends StatelessWidget {
  final Physician doctor;
  const DoctorCard(this.doctor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      key: ValueKey(doctor.id),
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 6.sp),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: InkWell(
        child: ListTile(
          title: Text(
            "BS. ${doctor.name}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
              "Giới tính: ${doctor.gender == null ? "Chưa có thông tin" : doctor.gender! ? "Nam" : "Nữ"}\n"
                  "Chuyên khoa: ${doctor.specialty?.name ?? "Chưa có thông tin"}"),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        onTap: () => context.push(
          '/doctors/${doctor.id}',
          extra: doctor,
        ),
      ),
    );
  }

}