import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';

import '../../domain/entities/qualification.dart';

class QualificationCard extends StatelessWidget {
  final Qualification qualification;
  const QualificationCard(this.qualification, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: ListTile(
            title: Text(qualification.name),
            subtitle: Text(
                "${qualification.specialty} - ${qualification.issuer}\n"
                    "Hiệu lực: ${DateFormatter.format(qualification.effectiveDate)}"),
          ),
        ),
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              qualification.type,
              style: TextStyle(
                fontSize: 12.sp,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ),
      ],
    );
  }

}