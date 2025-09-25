import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/features/appointment/presentation/view/booking_appointment_screen.dart';
import 'package:hospital_app/features/appointment/presentation/view/view_appointments_screen.dart';
import 'package:hospital_app/features/auth/presentation/view/change_password_screen.dart';
import 'package:hospital_app/features/auth/presentation/view/forgot_password_screen.dart';
import 'package:hospital_app/features/auth/presentation/view/login_screen.dart';
import 'package:hospital_app/features/auth/presentation/view/register_screen.dart';
import 'package:hospital_app/features/home/presentation/view/home_screen.dart';
import 'package:hospital_app/features/notification/presentation/view/notification_screen.dart';
import 'package:hospital_app/features/profile/presentation/view/profile_screen.dart';
import 'package:hospital_app/features/setting/presentation/view/otp_auth_phone_screen.dart';
import 'package:hospital_app/features/setting/presentation/view/setting_screen.dart';
import 'package:hospital_app/features/view_doctor/presentation/view/view_doctor_detail_screen.dart';
import 'package:hospital_app/features/view_doctor/presentation/view/view_doctors_screen.dart';
import 'package:hospital_app/features/view_followup_appointment/presentation/view/view_followup_appointment_detail_screen.dart';
import 'package:hospital_app/features/view_followup_appointment/presentation/view/view_followup_appointments_screen.dart';
import 'package:hospital_app/features/view_invoice/presentation/view/view_invoice_detail_screen.dart';
import 'package:hospital_app/features/view_invoice/presentation/view/view_invoices_screen.dart';
import 'package:hospital_app/features/view_medical_record/presentation/view/view_medical_record_detail_screen.dart';
import 'package:hospital_app/features/view_medical_record/presentation/view/view_medical_records_screen.dart';
import 'package:hospital_app/features/view_prescription/domain/entities/prescription.dart';
import 'package:hospital_app/features/view_prescription/presentation/view/view_prescription_detail_screen.dart';
import 'package:hospital_app/features/view_prescription/presentation/view/view_prescriptions_screen.dart';
import 'package:hospital_app/features/view_service/presentation/view/view_services_screen.dart';
import 'package:hospital_app/features/view_transfer_letter/presentation/view/view_transfer_letters_screen.dart';
import 'package:hospital_app/main_screen.dart';
import 'package:hospital_app/splash_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/forgot-password',
      builder: (context, state) => const ForgotPasswordScreen(),
    ),
    GoRoute(
      path: '/otp-code',
      builder: (context, state) => const OtpAuthPhoneScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) {
        return const ProfileScreen();
      },
    ),
    GoRoute(
      path: '/setting',
      builder: (context, state) {
        return const SettingScreen();
      },
    ),
    GoRoute(
      path: '/change-password',
      builder: (context, state) {
        return const ChangePasswordScreen();
      },
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) {
        return const NotificationScreen();
      },
    ),
    GoRoute(
      path: '/book-appointment',
      builder: (context, state) {
        return BookingAppointmentScreen();
      },
    ),
    GoRoute(
      path: '/appointments-history',
      builder: (context, state) {
        return const ViewAppointmentsScreen();
      },
    ),
    GoRoute(
      path: '/services',
      builder: (context, state) {
        return const ViewServicesScreen();
      },
    ),
    GoRoute(
      path: '/medical-records',
      builder: (context, state) {
        return const ViewMedicalRecordsScreen();
      },
    ),
    GoRoute(
      path: '/medical-records/:id',
      builder: (context, state) {
        final medicalRecordId = state.pathParameters['id']!;
        return const ViewMedicalRecordDetailScreen();
      },
    ),
    GoRoute(
      path: '/prescriptions',
      builder: (context, state) {
        return const ViewPrescriptionsScreen();
      },
    ),
    GoRoute(
      path: '/prescriptions/:id',
      builder: (context, state) {
        final prescription = state.extra as Prescription;
        return ViewPrescriptionDetailScreen(prescription);
      },
    ),
    GoRoute(
      path: '/doctors',
      builder: (context, state) {
        return const ViewDoctorsScreen();
      },
    ),
    GoRoute(
      path: '/doctors/:id',
      builder: (context, state) {
        final doctorId = state.pathParameters['id']!;
        return const ViewDoctorDetailScreen();
      },
    ),
    GoRoute(
      path: '/invoices',
      builder: (context, state) {
        return const ViewInvoicesScreen();
      },
    ),
    GoRoute(
      path: '/invoices/:id',
      builder: (context, state) {
        final invoiceId = state.pathParameters['id']!;
        return const ViewInvoiceDetailScreen();
      },
    ),
    GoRoute(
      path: '/followup-appointments',
      builder: (context, state) {
        return const ViewFollowupAppointmentsScreen();
      },
    ),
    GoRoute(
      path: '/followup-appointments/:id',
      builder: (context, state) {
        final followupAppointmentId = state.pathParameters['id']!;
        return const ViewFollowupAppointmentDetailScreen();
      },
    ),
    GoRoute(
      path: '/transfer-letters',
      builder: (context, state) {
        return const ViewTransferLettersScreen();
      },
    ),
    GoRoute(
      path: '/transfer-letters/:id',
      builder: (context, state) {
        final transferLetterId = state.pathParameters['id']!;
        return const ViewTransferLettersScreen();
      },
    ),
  ],
);
