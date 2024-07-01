import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hopecure/view/screen/auth/sign_up.dart';
import '../../../controller/auth/login_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/image_app.dart';
import '../../../core/function/valid_input.dart';
import '../../../core/shared_widget/button/custom_button.dart';
import '../../../core/shared_widget/custom_text_form_field.dart';
import '../../widget/auth/custom_button_icon_auth.dart';
import '../../widget/auth/text_signup_or_signin.dart';
import 'enter_your_number.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return GetBuilder<LoginControllerImp>(
      builder: (controller) => Scaffold(
        backgroundColor: AppColor.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Image.asset(
                    AppImageAsset.logo,
                    width: 200.w,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "welcome back!",
                    style: TextStyle(
                        height: 2, color: AppColor.black, fontSize: 16.sp),
                  ),
                  Text(
                    "Use your credentials to log into your account",
                    style: TextStyle(
                        height: 2, color: AppColor.blue, fontSize: 14.sp),
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
                          valid: (val) {
                            return validInput(val!, 5, 100, "email");
                          },
                          mycontroller: controller.email,
                          hinttext: "Enter the user name",
                          iconPrefixData: Icons.person_2_outlined,
                          showPrefixIcon: true,
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
                          mycontroller: controller.password,
                          hinttext: "Enter the password",
                          iconPrefixData: Icons.lock_outline,
                          iconData: controller.isshowpassword
                              ? FontAwesomeIcons.eyeSlash
                              : FontAwesomeIcons.eye,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0.h),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          Get.to(
                            () => const EnterYourNumber(),
                            transition: Transition.downToUp,
                            curve: Curves.easeInOut,
                            duration: const Duration(milliseconds: 300),
                          );
                        },
                        child: Text(
                          "Forgot your password?",
                          style: TextStyle(
                            height: 2,
                            color: AppColor.blue,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButtom(
                        text: "sign in",
                        heightContainer: 50.h,
                        colorText: AppColor.white,
                        colorButton: AppColor.blue,
                        onPressed: () {
                          // controller.goToMasterHome();
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const Row(children: <Widget>[
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(" OR "),
                        ),
                        Expanded(child: Divider()),
                      ]),
                      ButtomIcon(
                        text: "Continue with Google",
                        image: AppImageAsset.google,
                        colorButton: AppColor.white,
                        colorText: AppColor.black,
                        onPressed: () {},
                      ),
                      ButtomIcon(
                        text: "Continue with Apple",
                        image: AppImageAsset.apple,
                        colorButton: AppColor.white,
                        colorText: AppColor.black,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomTextSignUpOrSignIn(
                        textone: "You do not have an account.",
                        texttwo: "Go to register",
                        onTap: () {
                          Get.to(
                            () => const SignUp(),
                            transition: Transition.downToUp,
                            curve: Curves.easeInOut,
                            duration: const Duration(milliseconds: 300),
                          );
                        },
                      ),
                    ],
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
