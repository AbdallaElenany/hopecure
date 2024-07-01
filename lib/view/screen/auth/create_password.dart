import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../controller/auth/create_password_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/image_app.dart';
import '../../../core/function/valid_input.dart';
import '../../../core/shared_widget/button/custom_button.dart';
import '../../../core/shared_widget/custom_text_form_field.dart';
import 'login.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CreatePasswordControllerImp());
    return GetBuilder<CreatePasswordControllerImp>(
      builder: (controller) => Scaffold(
        backgroundColor: AppColor.white,
        body: SafeArea(
          child: SingleChildScrollView(
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
                    "Create Password",
                    style: TextStyle(color: AppColor.black, fontSize: 18.sp),
                  ),
                  Text(
                    "Password must be at least 8 characters long",
                    style: TextStyle(
                        height: 2, color: AppColor.gray, fontSize: 14.sp),
                  ),
                  Text(
                    "Includes letters, numbers,and symbols.",
                    style: TextStyle(color: AppColor.gray, fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 30.0.h,
                  ),
                  Form(
                    key: controller.formstate,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          heightContainer: 50.h,
                          isNumber: true,
                          showSuffix: false,
                          showSuffixIcon: true,
                          showPrefixIcon: true,
                          obscureText: controller.isshowpassword,
                          onTapIcon: () {
                            controller.showPassword();
                          },
                          valid: (val) {
                            return validInput(val!, 5, 100, "password");
                          },
                          mycontroller: controller.password,
                          hinttext: "Enter the password",
                          iconPrefixData: Icons.lock_outline,
                          iconData: controller.isshowpassword
                              ? FontAwesomeIcons.eyeSlash
                              : FontAwesomeIcons.eye,
                        ),
                        CustomTextFormField(
                          heightContainer: 50.h,
                          isNumber: true,
                          showSuffix: false,
                          showSuffixIcon: true,
                          showPrefixIcon: true,
                          obscureText: controller.isshowpassword,
                          onTapIcon: () {
                            controller.showPassword();
                          },
                          valid: (val) {
                            return validInput(val!, 5, 100, "password");
                          },
                          mycontroller: controller.confirmPassword,
                          hinttext: "Confirm password",
                          iconPrefixData: Icons.lock_outline,
                          iconData: controller.isshowpassword
                              ? FontAwesomeIcons.eyeSlash
                              : FontAwesomeIcons.eye,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 400.0.h,
                  ),
                  CustomButtom(
                    text: "continue",
                    heightContainer: 50.h,
                    colorText: AppColor.white,
                    colorButton: AppColor.blue,
                    onPressed: () {
                      Get.offAll(
                        () => const Login(),
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
        ),
      ),
    );
  }
}
