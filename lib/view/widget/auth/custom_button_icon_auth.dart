import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/color.dart';

class ButtomIcon extends StatelessWidget {
  final String text;
  final String image;
  final Color? colorButton;
  final Color? colorText;
  final void Function()? onPressed;
  const ButtomIcon({
    super.key,
    required this.text,
    this.colorButton,
    this.colorText,
    this.onPressed,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h, bottom: 5.h),
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colorButton,
        border: Border.all(
          color: AppColor.whiteGray,
          width: 1,
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        textColor: colorText,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 20.w,
              height: 20.h,
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: 10.0.w,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
