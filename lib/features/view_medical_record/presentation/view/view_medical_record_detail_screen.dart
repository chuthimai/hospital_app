import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_app/features/view_medical_record/presentation/widgets/medical_record_detail_body.dart';
import 'package:hospital_app/share/utils/asset_action.dart';
import 'package:hospital_app/share/utils/id_formatter.dart';

import '../../data/datasource/medical_record_local_data_source.dart';
import '../../data/datasource/medical_record_remote_data_source.dart';
import '../../data/repositories/medical_record_repository_impl.dart';
import '../../domain/entities/patient_record.dart';
import '../../domain/repositories/medical_record_repository.dart';
import '../cubit/patient_record_cubit.dart';

class ViewMedicalRecordDetailScreen extends StatefulWidget {
  final PatientRecord patientRecord;

  const ViewMedicalRecordDetailScreen(this.patientRecord, {super.key});

  @override
  State<ViewMedicalRecordDetailScreen> createState() => _ViewMedicalRecordDetailScreenState();
}

class _ViewMedicalRecordDetailScreenState extends State<ViewMedicalRecordDetailScreen> {
  String? barCodeSvg;

  final MedicalRecordRepository _repo = MedicalRecordRepositoryImpl(
    localDataSource: MedicalRecordLocalDataSourceImpl(),
    remoteDataSource: MedicalRecordRemoteDataSourceImpl(),
  );

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

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PatientRecordCubit(_repo)),
      ],
      child: Scaffold(
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
          child: MedicalRecordDetailBody(widget.patientRecord),
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
