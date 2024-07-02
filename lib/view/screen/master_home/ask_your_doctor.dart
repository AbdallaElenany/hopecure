import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/master_home/tap_bar_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/image_app.dart';
import '../../../core/shared_widget/button/custom_button.dart';

class AskYourDoctor extends StatelessWidget {
  const AskYourDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TapBarControllerImp());
    return GetBuilder<TapBarControllerImp>(
      builder: (controller) => Scaffold(
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
                "Ask your doctor",
                style: TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: TabBar(
                controller: controller.tabController,
                labelStyle: TextStyle(
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
                indicatorColor: AppColor.blue,
                tabs: const [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Open inquiries',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Closed inquiries',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: [
                  // first tab bar view widget
                  Container(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "2/7/2024    05:35:00",
                            style: TextStyle(
                              color: AppColor.gray,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Fifth Settlement Branch",
                            style: TextStyle(
                              color: AppColor.black,
                              height: 2,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                          Text(
                            "What test are required before the treatment dose ?",
                            style: TextStyle(
                              color: AppColor.blue,
                              height: 2,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      )),
                  // second tab bar view widget
                  Container(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "2/7/2024    05:35:00",
                            style: TextStyle(
                              color: AppColor.gray,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Fifth Settlement Branch",
                            style: TextStyle(
                              color: AppColor.black,
                              height: 2,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                          Text(
                            "What test are required before the treatment dose ?",
                            style: TextStyle(
                              color: AppColor.blue,
                              height: 2,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: CustomButtom(
                text: "Create a new inquiry ",
                heightContainer: 50.h,
                colorText: AppColor.white,
                colorButton: AppColor.blue,
                onPressed: () {
                  // controller.goToMasterHome();
                },
              ),
            ),
            SizedBox(
              height: 130.0.h,
            ),
          ],
        ),
      ),
    );
  }
}
