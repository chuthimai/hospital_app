import 'package:intl/intl.dart';

class MoneyFormatter {
  static String format(double value) {
    final formatter = NumberFormat("#,###", "vi_VN");
    return "${formatter.format(value)} VNĐ";
  }
}
