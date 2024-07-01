import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../controller/auth/sign_up_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/image_app.dart';
import '../../../core/function/valid_input.dart';
import '../../../core/shared_widget/button/custom_button.dart';
import '../../../core/shared_widget/custom_text_form_field.dart';
import 'enter_your_number.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return GetBuilder<SignUpControllerImp>(
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
                    "Create an account",
                    style: TextStyle(
                        height: 2, color: AppColor.black, fontSize: 18.sp),
                  ),
                  Text(
                    "Introduce yourself",
                    style: TextStyle(
                        height: 2, color: AppColor.blue, fontSize: 14.sp),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        padding: const EdgeInsets.all(10.0),
                        margin: EdgeInsets.symmetric(vertical: 25.0.h),
                        width: 100.0.w,
                        height: 100.0.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.whiteGray,
                        ),
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          color: AppColor.blue,
                          size: 30.0,
                        )),
                  ),
                  Form(
                    key: controller.formstate,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          heightContainer: 50.h,
                          isNumber: false,
                          showSuffix: false,
                          showSuffixIcon: false,
                          showPrefixIcon: false,
                          valid: (val) {
                            return validInput(val!, 5, 100, "username");
                          },
                          mycontroller: controller.password,
                          hinttext: "Enter first name",
                        ),
                        CustomTextFormField(
                          heightContainer: 50.h,
                          isNumber: false,
                          showSuffix: false,
                          showSuffixIcon: false,
                          showPrefixIcon: false,
                          valid: (val) {
                            return validInput(val!, 5, 100, "username");
                          },
                          mycontroller: controller.password,
                          hinttext: "Enter another name",
                        ),
                        CustomTextFormField(
                          heightContainer: 50.h,
                          isNumber: false,
                          showSuffix: false,
                          showSuffixIcon: false,
                          showPrefixIcon: false,
                          valid: (val) {
                            return validInput(val!, 5, 100, "email");
                          },
                          mycontroller: controller.password,
                          hinttext: "Enter your email address",
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        activeColor: AppColor.blue,
                        value: controller.checkValue,
                        onChanged: (value) {
                          controller.checkValue = value!;
                          controller.update();
                        },
                      ),
                      Text(
                        "I agree to our terms and conditions",
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 160.h,
                  ),
                  CustomButtom(
                    text: "continue",
                    heightContainer: 50.h,
                    colorText: AppColor.white,
                    colorButton: AppColor.blue,
                    onPressed: () {
                      Get.to(
                        () => const EnterYourNumber(),
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
