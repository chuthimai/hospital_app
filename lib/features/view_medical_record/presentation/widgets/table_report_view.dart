import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/entities/assessment_result.dart';
import '../../domain/entities/measurement_indicator.dart';

class TableReportView extends StatelessWidget {
  final List<AssessmentResult> results;

  const TableReportView(this.results, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: 12.sp,
        headingTextStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),
        headingRowColor: MaterialStateProperty.all(Colors.grey[200]),
        dataTextStyle: TextStyle(fontSize: 16.sp),
        columns: const [
          DataColumn(label: Text('Chỉ số xét nghiệm')),
          DataColumn(label: Text('Kết quả')),
          DataColumn(label: Text('Chỉ số bình thường')),
          DataColumn(label: Text('Đơn vị')),
        ],

        rows: [
          ...List.generate(results.length, (index) {
            final r = results[index];
            final item = r as MeasurementIndicator;

            final min = item.minimum?.toStringAsFixed(1) ?? "-";
            final max = item.maximum?.toStringAsFixed(1) ?? "-";
            return DataRow(
                color: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (index.isEven) {
                      return Colors.grey[300];
                    }
                    return null;
                  },
                ),
                cells: [
                  DataCell(Text(item.name)),
                  DataCell(Text(r.value ?? "Không có dữ liệu")),
                  DataCell(Text("$min - $max")),
                  DataCell(Text(item.unit)),
                ]);
          })
        ]
      ),
    );
  }
}
