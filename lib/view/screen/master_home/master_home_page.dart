import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../core/constant/color.dart';
import '../../../controller/master_home/bottom_navigation_bar.dart';
import '../../widget/home/nav_drawer.dart';

class MasterHomePage extends StatelessWidget {
  const MasterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BottomNavigationBarControllerImp());

    return GetBuilder<BottomNavigationBarControllerImp>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        key: controller.scaffoldKey,
        extendBody: true,
        endDrawer: const NavDrawer(),
        body: controller.pages[controller.currentIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            backgroundColor: AppColor.green,
            onPressed: () {},
            child: const Icon(Icons.event_note_outlined)),
        bottomNavigationBar: BottomAppBar(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Colors.transparent,
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          child: Container(
            margin:
                EdgeInsets.only(left: 10.0.w, right: 10.0.w, bottom: 10.0.h),
            decoration: const BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: BottomNavigationBar(
              currentIndex: controller.currentIndex,
              onTap: (index) {
                if (index != 2) {
                  controller.currentIndex = index;
                  controller.update();
                }
              },
              backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColor.blue,
              unselectedItemColor: AppColor.black,
              selectedFontSize: 10,
              unselectedFontSize: 10,
              elevation: 0,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: FaIcon(FontAwesomeIcons.house, size: 20),
                  ),
                  label: 'Home'.tr,
                ),
                BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: FaIcon(FontAwesomeIcons.briefcase, size: 20),
                  ),
                  label: 'Category'.tr,
                ),
                const BottomNavigationBarItem(icon: SizedBox(), label: ""),
                BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: FaIcon(FontAwesomeIcons.message, size: 20),
                  ),
                  label: 'Ask Doctor'.tr,
                ),
                BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: FaIcon(FontAwesomeIcons.user, size: 20),
                  ),
                  label: 'Account'.tr,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
