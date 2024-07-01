import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constant/color.dart';

class CardSectionsService extends StatelessWidget {
  final String text;
  final String image;
  final double height;
  final double width;
  final double fontSize;
  final void Function()? onTap;
  const CardSectionsService({
    super.key,
    required this.text,
    this.onTap,
    required this.image,
    required this.height,
    required this.width,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 3.0.w,
          vertical: 4.0.h,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 10.0.h,
        ),
        height: height,
        width: width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          color: AppColor.white,
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 35.w,
              height: 35.h,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                color: AppColor.blue,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
