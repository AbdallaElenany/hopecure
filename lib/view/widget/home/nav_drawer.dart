import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hopecure/core/constant/color.dart';
import 'package:hopecure/core/constant/image_app.dart';

import '../../../data/data source/static/data_drawer_home.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
          child: ListView(children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0.h),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2.0),
                    width: 70.0.w,
                    height: 70.0.h,
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
                  SizedBox(
                    width: 5.0.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Abdallah Elenany",
                          style: TextStyle(
                            color: AppColor.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          "abdalla.m.elenany@gmail.com",
                          style: TextStyle(
                            color: AppColor.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(),
            Column(
              children: List.generate(
                drawerHomeItem.length,
                (index) {
                  final drawer = drawerHomeItem[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0.h),
                    child: Row(
                      children: [
                        Image.asset(
                          drawer.image,
                          height: 30.0.h,
                          width: 30.0.w,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          width: 10.0.w,
                        ),
                        Expanded(
                          child: Text(
                            drawer.name,
                            style: TextStyle(
                              color: AppColor.black,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
