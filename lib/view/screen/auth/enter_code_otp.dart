import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/image_app.dart';
import '../../../core/shared_widget/button/custom_button.dart';
import 'create_password.dart';

class EnterCodeOtp extends StatelessWidget {
  const EnterCodeOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    AppImageAsset.back,
                    width: 30.0.w,
                    height: 30.0.h,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Enter the code",
                style: TextStyle(color: AppColor.black, fontSize: 18.sp),
              ),
              Text(
                "The code was sent to +20 01011441043.",
                style:
                    TextStyle(height: 2, color: AppColor.gray, fontSize: 14.sp),
              ),
              Text(
                "Didn't receive the code? Resend",
                style: TextStyle(color: AppColor.gray, fontSize: 14.sp),
              ),
              SizedBox(
                height: 40.0.h,
              ),
              OtpTextField(
                fieldWidth: 55.0,
                borderRadius: BorderRadius.circular(10),
                numberOfFields: 5,
                filled: true,
                fillColor: AppColor.whiteGray,
                focusedBorderColor: AppColor.whiteGray,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (otp) {}, // end onSubmit// end onSubmit
              ),
              Expanded(
                child: SizedBox(
                  height: 10.h,
                ),
              ),
              CustomButtom(
                text: "continue",
                heightContainer: 50.h,
                colorText: AppColor.white,
                colorButton: AppColor.blue,
                onPressed: () {
                  Get.to(
                    () => const CreatePassword(),
                    transition: Transition.downToUp,
                    curve: Curves.easeInOut,
                    duration: const Duration(milliseconds: 300),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
