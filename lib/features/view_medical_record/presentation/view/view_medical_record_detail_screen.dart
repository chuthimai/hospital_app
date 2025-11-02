import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/observation_status.dart';
import 'package:hospital_app/share/utils/asset_action.dart';
import 'package:hospital_app/share/utils/id_formatter.dart';

import '../../../../share/utils/date_formatter.dart';
import '../../domain/entities/patient_record.dart';

class ViewMedicalRecordDetailScreen extends StatefulWidget {
  final PatientRecord patientRecord;

  const ViewMedicalRecordDetailScreen(this.patientRecord, {super.key});

  @override
  State<ViewMedicalRecordDetailScreen> createState() => _ViewMedicalRecordDetailScreenState();
}

class _ViewMedicalRecordDetailScreenState extends State<ViewMedicalRecordDetailScreen> {
  String? barCodeSvg;

  @override
  void initState(){
    super.initState();
    _loadBarCode();
  }

  Future<void> _loadBarCode() async {
    final svg = await AssetAction.loadAsset("assets/svg/icons/bar_code.svg");
    setState(() {
      barCodeSvg = svg;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (barCodeSvg == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Hồ sơ #${widget.patientRecord.id}'),
        actions: [
          IconButton(
            icon: SizedBox(
              height: 32.sp,
              width: 32.sp,
              child: SvgPicture.string(
                barCodeSvg!
              ),
            ),
              onPressed: () => _showBarCodeOverlay(
                context,
                "BA${IdFormatter.formatFiveNumber(widget.patientRecord.id)}",
              ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...widget.patientRecord.serviceReports.map((serviceReport) {
                if (serviceReport.status != ObservationStatus.final_ ||
                    serviceReport.effectiveTime == null) {
                  return const SizedBox();
                }
                return Card(
                  key: ValueKey(serviceReport.id),
                  margin:
                      EdgeInsets.symmetric(horizontal: 12.sp, vertical: 6.sp),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.sp),
                  ),
                  child: InkWell(
                    child: ListTile(
                      title: Text(
                        serviceReport.service.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("Thời gian thực hiện: "
                          "${DateFormatter.format(serviceReport.effectiveTime!)}"),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    onTap: () => context.push(
                      '/medical-records/${widget.patientRecord.id}/service-reports/${serviceReport.id}',
                      extra: serviceReport,
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }

  void _showBarCodeOverlay(BuildContext context, String code) {
    showGeneralDialog(
      context: context,
      barrierLabel: "ViewImage",
      barrierDismissible: true,
      barrierColor: Colors.white70.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (context, anim1, anim2) {
        return GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SafeArea(
            child: Stack(
              children: [
                Center(
                  child: InteractiveViewer(
                    minScale: 0.5,
                    maxScale: 3.0,
                    child: Hero(
                      tag: "barcode-$code",
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.sp),
                        child: BarcodeWidget(
                          barcode: Barcode.code128(),
                          data: code,
                          width: double.infinity,
                          height: 150.sp,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return FadeTransition(
          opacity: CurvedAnimation(parent: anim1, curve: Curves.easeOut),
          child: ScaleTransition(
            scale: Tween(begin: 0.95, end: 1.0)
                .animate(CurvedAnimation(parent: anim1, curve: Curves.easeOut)),
            child: child,
          ),
        );
      },
    );
  }
}
