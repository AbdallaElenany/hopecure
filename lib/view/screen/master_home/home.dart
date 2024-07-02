import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hopecure/core/constant/image_app.dart';
import '../../../controller/master_home/bottom_navigation_bar.dart';
import '../../../core/constant/color.dart';
import '../../../data/data source/static/data_card_home.dart';
import '../../widget/home/card_servies.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationBarControllerImp>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColor.blue,
          leading: Hero(
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
          actions: [
            InkWell(
                onTap: () {
                  controller.scaffoldKey.currentState?.openEndDrawer();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                  child: Image.asset(
                    AppImageAsset.drawerIcon,
                    width: 35.0.w,
                    height: 35.0.h,
                    fit: BoxFit.contain,
                  ),
                ))
          ],
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: AppColor.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back Abdallah",
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    "Stay healthy !",
                    style: TextStyle(
                      height: 1.5,
                      color: AppColor.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: AppColor.white,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (1 / 1),
                ),
                shrinkWrap: true,
                itemCount: cardHomeItem.length,
                itemBuilder: (context, index) {
                  return CardHome(
                    cardHomeItem: cardHomeItem[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
