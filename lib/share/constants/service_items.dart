import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ServiceItem {
  final String label;
  final IconData iconData;
  final Function(BuildContext context) onTap;

  ServiceItem({
    required this.label,
    required this.iconData,
    required this.onTap,
  });
}

final List<ServiceItem> serviceExaminationItems = [
  ServiceItem(
    label: "Đặt lịch",
    iconData: Icons.calendar_month,
    onTap: (BuildContext context) {
      context.push("/book-appointment");
    },
  ),
  ServiceItem(
    label: "Lịch sử đặt lịch",
    iconData: Icons.calendar_view_month_outlined,
    onTap: (BuildContext context) {
      context.push("/appointments-history");
    },
  ),
  ServiceItem(
    label: "Dịch vụ cần làm",
    iconData: Icons.medical_services_outlined,
    onTap: (BuildContext context) {
      context.push("/services");
    },
  ),
  ServiceItem(
    label: "Đơn thuốc",
    iconData: Icons.medication,
    onTap: (BuildContext context) {
      context.push("/prescriptions");
    },
  ),
];

final List<ServiceItem> medicalDocumentsItems = [
  ServiceItem(
    label: "Hồ sơ sức khoẻ",
    iconData: Icons.folder_shared,
    onTap: (BuildContext context) {
      context.push("/medical-records");
    },
  ),
  ServiceItem(
    label: "Phiếu tái khám",
    iconData: Icons.event,
    onTap: (BuildContext context) {
      context.push("/followup-appointments");
    },
  ),
  ServiceItem(
    label: "Giấy chuyển viện",
    iconData: Icons.article,
    onTap: (BuildContext context) {
      context.push("/transfer-letters");
    },
  ),
];

final List<ServiceItem> paymentItems = [
  ServiceItem(
    label: "Hoá đơn",
    iconData: Icons.attach_money,
    onTap: (BuildContext context) {
      context.push("/invoices");
    },
  ),
];

final List<ServiceItem> infoItems = [
  ServiceItem(
    label: "Bác sĩ",
    iconData: Icons.person,
    onTap: (BuildContext context) {
      context.push("/doctors");
    },
  ),
];

