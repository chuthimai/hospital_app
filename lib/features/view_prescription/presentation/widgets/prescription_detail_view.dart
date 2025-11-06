import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/view_prescription/domain/entities/enum/snomedct_form_codes.dart';
import 'package:hospital_app/features/view_prescription/presentation/cubit/prescription_cubit.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';

import '../../domain/entities/prescribed_medication.dart';
import '../../domain/entities/prescription.dart';
import '../cubit/prescription_state.dart';

class PrescriptionDetailView extends StatefulWidget {
  final Prescription prescription;
  const PrescriptionDetailView(this.prescription, {super.key});

  @override
  State<PrescriptionDetailView> createState() => _PrescriptionDetailViewState();
}

class _PrescriptionDetailViewState extends State<PrescriptionDetailView> {
  @override
  void initState() {
    super.initState();
    context.read<PrescriptionCubit>().getDetailPrescription(widget.prescription);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrescriptionCubit, PrescriptionState>(
      builder: (context, state) {
        if (state is PrescriptionInitial) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is PrescriptionGetDetailFailure) {
          return Center(
            child: Text(state.message),
          );
        }

        final prescription = (state as PrescriptionGetDetailSuccess).prescription;
        final prescribedMedications = prescription.prescribedMedications;
        if (prescribedMedications.isEmpty) {
          return const Center(
            child: Text("Không có thông tin"),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Thông tin chung
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Text(
                      "Đơn thuốc khám \n${prescription.performer?.specialty
                          ?.name}".toUpperCase(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: Text("Bác sỹ kê đơn"),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(prescription.performer?.name ?? "Không có thông tin"),
                  ),
                ],
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: Text("Ngày tạo"),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(DateFormatter.format(prescription.createdTime)),
                  ),
                ],
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: Text("Lời dặn"),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(prescription.note ?? "Không có thông tin"),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              const Text(
                "Danh sách thuốc",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      showBottomBorder: true,
                      columnSpacing: 12.sp,
                      dataTextStyle: TextStyle(fontSize: 16.sp),
                      headingTextStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      headingRowColor:
                      MaterialStateProperty.all(Colors.grey[200]),
                      columns: const [
                        DataColumn(label: Text("STT")),
                        DataColumn(label: Text("Tên thuốc")),
                        DataColumn(label: Text("Số lượng")),
                        DataColumn(label: Text("Cách dùng")),
                      ],
                      rows: [
                        ...List.generate(
                          prescribedMedications.length,
                              (index) {
                            final PrescribedMedication prescribedMedication =
                            prescribedMedications[index];
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
                                DataCell(
                                  Text("${index + 1}"),
                                ),
                                DataCell(
                                    Text(
                                      prescribedMedication.medication.name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                                DataCell(Text(
                                    "${prescribedMedication.quantity
                                        .toString()} "
                                        "${prescribedMedication.medication
                                        .doseForm.viName}")),
                                DataCell(
                                    Text(prescribedMedication
                                        .dosageInstruction)),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}