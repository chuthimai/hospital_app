import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class QrCodePayment extends StatelessWidget {
  final String data;
  const QrCodePayment({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.sp),
      child: Center(
        child: PrettyQrView.data(
          data: data,
          errorCorrectLevel: QrErrorCorrectLevel.H,
          decoration: PrettyQrDecoration(
            shape:
            PrettyQrSmoothSymbol(color: Theme.of(context).dividerColor),
            quietZone: const PrettyQrQuietZone.modules(2),
          ),
        ),
      ),
    );
  }
}
