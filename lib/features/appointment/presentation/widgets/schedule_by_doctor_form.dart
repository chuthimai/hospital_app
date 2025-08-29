import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/share/widgets/custom_button.dart';
import 'package:hospital_app/share/widgets/custom_dropdown_search.dart';
import 'package:hospital_app/share/widgets/date_picker_field.dart';

class ScheduleByDoctorForm extends StatefulWidget {
  const ScheduleByDoctorForm({super.key});

  @override
  State<ScheduleByDoctorForm> createState() => _ScheduleByDoctorFormState();
}

class _ScheduleByDoctorFormState extends State<ScheduleByDoctorForm> {
  final List<Doctor> _allDoctors = [
    Doctor(id: 1, fullName: "BS. Nguyễn Văn A", specialty: "Nội tổng quát"),
    Doctor(id: 2, fullName: "BS. Trần Thị B", specialty: "Nhi khoa"),
    Doctor(id: 3, fullName: "BS. Lê Văn C", specialty: "Ngoại khoa"),
    Doctor(id: 4, fullName: "BS. Phạm Thị D", specialty: "Sản phụ khoa"),
    Doctor(id: 5, fullName: "BS. Hoàng Văn E", specialty: "Tim mạch"),
  ];
  Doctor? _selectedDoctor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8.sp),
        DropdownButtonFormField<String>(
          items: const [
            DropdownMenuItem(value: "Tổng quát", child: Text("Khám tổng quát")),
            DropdownMenuItem(value: "Tim mạch", child: Text("Chuyên khoa Tim mạch")),
            DropdownMenuItem(value: "Nhi", child: Text("Chuyên khoa Nhi")),
          ],
          onChanged: (val) {},
          decoration: const InputDecoration(
            labelText: "Chọn kiểu khám",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 8.sp),
        CustomDropdownSearch<Doctor>(
          items: _allDoctors,
          selectedItem: _selectedDoctor,
          itemAsString: (d) => d.fullName,
          labelText: "Chọn bác sĩ",
          hintText: "Tìm kiếm...",
          searchHint: "Nhập tên bác sĩ...",
          onChanged: (doctor) {
            setState(() {
              _selectedDoctor = doctor;
            });
          },
        ),

        SizedBox(height: 8.sp),
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
            SizedBox(width: 8.sp), // khoảng cách giữa 2 field
            Expanded(
              flex: 1,
              child: DropdownButtonFormField<String>(
                items: const [
                  DropdownMenuItem(value: "Sáng", child: Text("Ca sáng")),
                  DropdownMenuItem(value: "Chiều", child: Text("Ca chiều")),
                  DropdownMenuItem(value: "Tối", child: Text("Ca tối")),
                ],
                onChanged: (val) {},
                decoration: const InputDecoration(
                  labelText: "Chọn ca",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),
        CustomButton(text: "Đặt lịch", onPressed: () {})
      ],
    );
  }
}

class Doctor {
  final int id;
  final String fullName;
  final String specialty;

  Doctor({
    required this.id,
    required this.fullName,
    required this.specialty,
  });
}

