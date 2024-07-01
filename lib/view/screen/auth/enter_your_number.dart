import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../controller/auth/enter_number_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/image_app.dart';
import '../../../core/shared_widget/button/custom_button.dart';
import 'enter_code_otp.dart';

class EnterYourNumber extends StatelessWidget {
  const EnterYourNumber({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(EnterNumberControllerImp());
    return GetBuilder<EnterNumberControllerImp>(
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
                    "Enter your phone number",
                    style: TextStyle(
                        height: 2, color: AppColor.black, fontSize: 18.sp),
                  ),
                  Text(
                    "We will send the login via sms",
                    style: TextStyle(
                        height: 2, color: AppColor.gray, fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Form(
                    key: controller.formstate,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 50,
                          padding: const EdgeInsets.all(12),
                          margin: EdgeInsets.only(top: 15.h, bottom: 5.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.whiteGray,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "+20 ",
                                style: TextStyle(
                                    color: AppColor.black, fontSize: 14.sp),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 5.0.w),
                                child: SvgPicture.asset(
                                    AppImageAsset.vectorBottom,
                                    width: 10.0.w,
                                    height: 10.0.h,
                                    color: AppColor.blue),
                              ),
                              const VerticalDivider(color: AppColor.black),
                              Expanded(
                                child: TextFormField(
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                          decimal: true),
                                  controller: controller.yourNumber,
                                  style: TextStyle(
                                      fontSize: 14.sp, color: AppColor.black),
                                  decoration: InputDecoration(
                                    isDense: true,
                                    hintText: "Enter your number",
                                    hintStyle: TextStyle(
                                        fontSize: 12.sp, color: AppColor.gray),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10.h, horizontal: 15.w),
                                    border: InputBorder.none,
                                    suffixIcon: InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                          AppImageAsset.closeIcon,
                                          width: 10.0.w,
                                          height: 10.0.h,
                                          color: AppColor.blue),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 480.h,
                  ),
                  CustomButtom(
                    text: "continue",
                    heightContainer: 50.h,
                    colorText: AppColor.white,
                    colorButton: AppColor.blue,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return CupertinoAlertDialog(
                              title: Text(
                                "+20 01011441043",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColor.black,
                                  fontSize: 18.sp,
                                ),
                              ),
                              content: Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.0.h),
                                child: Text(
                                  "Is this phone number correct?",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColor.gray,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Get.to(
                                      () => const EnterCodeOtp(),
                                      transition: Transition.downToUp,
                                      curve: Curves.easeInOut,
                                      duration:
                                          const Duration(milliseconds: 300),
                                    );
                                    //Navigator.pop(context);
                                  },
                                  child: Text(
                                    "confirm",
                                    style: TextStyle(
                                      color: AppColor.blue,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context); //close Dialog
                                  },
                                  child: Text(
                                    "change",
                                    style: TextStyle(
                                      color: AppColor.black,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          });
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
