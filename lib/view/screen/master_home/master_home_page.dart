import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../core/shared_widget/button/custom_button_icon.dart';
import '../../../data/data source/static/data_bottom_nav_bar.dart';

class MasterHomePage extends StatefulWidget {
  const MasterHomePage({super.key});

  @override
  State<MasterHomePage> createState() => _MasterHomePageState();
}

class _MasterHomePageState extends State<MasterHomePage> {
  late PageController pageController;
  int currentPage = 0;

  bottomTapped(int index) {
    setState(() {
      currentPage = index;
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const <Widget>[],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                currentPage == 3 || currentPage == 4
                    ? const SizedBox.shrink()
                    : InkWell(
                        onTap: () {},
                        child: Container(
                          width: 120.w,
                          padding: EdgeInsets.symmetric(
                            vertical: 8.h,
                          ),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: LinearGradient(
                              colors: [
                                AppColor.white,
                                AppColor.white,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'أضاف إعلانك',
                              style: TextStyle(
                                color: AppColor.black,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
                  margin:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                  decoration: const BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.shadow,
                        offset: Offset(0, 10),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      bottomNavBarItem.length,
                      (index) {
                        final bottomIcon = bottomNavBarItem[index];
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomButtomIcon(
                              image: bottomIcon.image,
                              onTap: () {
                                bottomTapped(index);
                              },
                              colorButton: AppColor.white,
                              colorGradient: currentPage == index
                                  ? const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        AppColor.white,
                                        AppColor.white,
                                      ],
                                    )
                                  : null,
                              width: 38.w,
                              height: 38.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4.0.h),
                              child: Text(
                                bottomIcon.name,
                                style: TextStyle(
                                  color: currentPage == index
                                      ? AppColor.black
                                      : AppColor.white,
                                  fontSize: 10.sp,
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
