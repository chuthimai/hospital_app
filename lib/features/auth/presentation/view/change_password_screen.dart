import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/share/widgets/custom_button.dart';
import 'package:hospital_app/share/widgets/custom_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(16.sp),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_outlined),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(32.sp, 0, 32.sp, 32.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Hero(
                                  tag: "change_password",
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Text(
                                      "Đổi mật khẩu",
                                      style: Theme.of(context).textTheme.displayLarge,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.sp),
                          const CustomTextFormField(
                            hintText: "Mật khẩu cũ",
                            prefixIcon: Icon(Icons.password),
                            isPassword: true,
                          ),
                          SizedBox(height: 16.h),
                          const CustomTextFormField(
                            hintText: "Mật khẩu mới",
                            prefixIcon: Icon(Icons.vpn_key),
                            isPassword: true,
                          ),
                          SizedBox(height: 16.h),
                          const CustomTextFormField(
                            hintText: "Nhập lại mật khẩu mới",
                            prefixIcon: Icon(Icons.vpn_key_outlined),
                            isPassword: true,
                          ),
                          SizedBox(height: 16.h),

                          CustomButton(
                            text: "Lưu thay đổi",
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}