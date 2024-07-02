import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constant/color.dart';
import '../../../data/model/card_home_model.dart';

class CardHome extends StatelessWidget {
  final CardHomeModel cardHomeItem;
  const CardHome({super.key, required this.cardHomeItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.white,
          boxShadow: const [
            BoxShadow(
              color: AppColor.shadow,
              offset: Offset(0, 10),
              blurRadius: 20,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              cardHomeItem.name,
              style: TextStyle(
                color: AppColor.black,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 20.0.h,
            ),
            Image.asset(
              cardHomeItem.image,
              width: 100.0.w,
              height: 100.0.h,
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}
