import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/image_app.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColor.blue,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            AppImageAsset.back2,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Hero(
              tag: 'imageHero',
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.white),
                  child: SvgPicture.asset(
                    AppImageAsset.linearNotification,
                  ),
                ),
              ),
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15.0),
            width: double.infinity,
            color: AppColor.blue,
            child: Text(
              "Category",
              style: TextStyle(
                color: AppColor.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      AppImageAsset.image9,
                      width: 50.0.w,
                      height: 50.0.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Text(
                      "Examination",
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 18.sp,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      AppImageAsset.image12,
                      width: 50.0.w,
                      height: 50.0.h,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Image.asset(
                      AppImageAsset.image10,
                      width: 50.0.w,
                      height: 50.0.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Text(
                      "Ultrasound",
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 18.sp,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      AppImageAsset.image12,
                      width: 50.0.w,
                      height: 50.0.h,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Image.asset(
                      AppImageAsset.image11,
                      width: 50.0.w,
                      height: 50.0.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Text(
                      "Chemotherapy",
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 18.sp,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      AppImageAsset.image12,
                      width: 50.0.w,
                      height: 50.0.h,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                const Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
