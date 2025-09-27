import 'package:flutter/material.dart';
import 'package:hospital_app/fakedata/physician.dart';
import 'package:hospital_app/features/view_doctor/presentation/widgets/qualification_card.dart';
import 'package:hospital_app/share/constants/app_default.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';

import '../../domain/entities/physician.dart';
import '../widgets/floating_button_create_appointment_by_doctor.dart';

class ViewDoctorDetailScreen extends StatelessWidget {
  final Physician doctor;

  const ViewDoctorDetailScreen(this.doctor, {super.key});

  @override
  Widget build(BuildContext context) {
    final Physician doctor1 = fakePhysicians[1];
    return Scaffold(
      appBar: AppBar(
        title: Text(doctor1.name),
      ),
      floatingActionButton: FloatingButtonCreateAppointmentByDoctor(
        doctor: doctor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Ảnh + tên
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: doctor1.photo == null
                        ? AssetImage(AppDefault.imageLink) as ImageProvider
                        : NetworkImage(doctor1.photo!) as ImageProvider,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      doctor1.name,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Thông tin cơ bản
              Text(
                  "Giới tính: ${doctor1.gender == null ? "Không có thông tin" : doctor1.gender! ? "Nam" : "Nữ"}"),
              Text(
                  "Ngày sinh: ${doctor1.birthDate == null ? "Không có thông tin" : DateFormatter.format(doctor1.birthDate!)}"),
              Text(
                  "Chuyên khoa: ${doctor1.specialty == null ? "Không có thông tin" : doctor1.specialty!.name}"),

              const Divider(height: 32),

              // Danh sách bằng cấp
              Text(
                "Bằng cấp & Chứng chỉ",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              ...doctor1.qualifications.map((q) => QualificationCard(
                    q,
                    key: Key(
                      q.id.toString(),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
