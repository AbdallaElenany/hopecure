import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/image_app.dart';

class Account extends StatelessWidget {
  const Account({super.key});

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
              "Account",
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
                Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Stack(
                        //fit: StackFit.loose,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(2.0),
                            width: 100.0.w,
                            height: 100.0.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.blue,
                            ),
                            child: Center(
                              child: Image.asset(
                                AppImageAsset.person,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: AppColor.blue,
                              radius: 12.0,
                              child: InkWell(
                                onTap: () async {},
                                child: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0.h,
                      ),
                      Text(
                        "Abdallah Elenany",
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      AppImageAsset.image13,
                      width: 35.0.w,
                      height: 35.0.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Text(
                      "Personal file",
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 18.sp,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      AppImageAsset.image12,
                      width: 35.0.w,
                      height: 35.0.h,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Image.asset(
                      AppImageAsset.image14,
                      width: 35.0.w,
                      height: 35.0.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Text(
                      "settings",
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 18.sp,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      AppImageAsset.image12,
                      width: 35.0.w,
                      height: 35.0.h,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Image.asset(
                      AppImageAsset.image15,
                      width: 35.0.w,
                      height: 35.0.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Text(
                      "Help",
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 18.sp,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      AppImageAsset.image12,
                      width: 35.0.w,
                      height: 35.0.h,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Image.asset(
                      AppImageAsset.image16,
                      width: 35.0.w,
                      height: 35.0.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Text(
                      "Privacy policy",
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 18.sp,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      AppImageAsset.image12,
                      width: 35.0.w,
                      height: 35.0.h,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Image.asset(
                      AppImageAsset.image17,
                      width: 35.0.w,
                      height: 35.0.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Text(
                      "Sign out",
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 18.sp,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      AppImageAsset.image12,
                      width: 35.0.w,
                      height: 35.0.h,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
