import 'package:flutter/material.dart';

class DatePickerField extends StatefulWidget {
  final String label;
  final void Function(DateTime)? onDateSelected;

  const DatePickerField({
    super.key,
    required this.label,
    this.onDateSelected,
  });

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  DateTime? _selectedDate;

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final nextMonth = DateTime(now.year, now.month + 1, now.day);
    final lastDate = DateTime(nextMonth.year, nextMonth.month, nextMonth.day);

    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? now,
      firstDate: now,
      lastDate: lastDate, // tới 1 năm sau
      locale: const Locale("vi", "VN"), // để hiển thị tiếng Việt
    );

    if (picked != null) {
      setState(() => _selectedDate = picked);
      widget.onDateSelected?.call(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      controller: TextEditingController(
        text: _selectedDate != null
            ? "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}"
            : "",
      ),
      decoration: InputDecoration(
        labelText: widget.label,
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.calendar_today),
      ),
      onTap: _pickDate,
    );
  }
}
