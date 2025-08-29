import 'package:flutter/material.dart';
import 'package:hospital_app/share/widgets/custom_button.dart';
import 'package:hospital_app/share/widgets/date_picker_field.dart';

class ScheduleByDateForm extends StatelessWidget {
  const ScheduleByDateForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            const SizedBox(width: 8), // khoảng cách giữa 2 field
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
