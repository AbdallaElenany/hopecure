import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final Color? colorText;
  final Color? colorButton;
  final Gradient? colorGradient;
  final void Function()? onPressed;
  final double heightContainer;
  const CustomButtom({
    super.key,
    required this.text,
    this.colorText,
    this.onPressed,
    this.colorButton,
    this.colorGradient,
    required this.heightContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.h, bottom: 10.h),
      width: double.infinity,
      height: heightContainer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: colorGradient,
        color: colorButton,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        textColor: colorText,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
