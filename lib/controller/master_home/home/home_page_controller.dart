import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class HomePageController extends GetxController {
  bottomTapped(int index);
}

class HomePageControllerImp extends HomePageController {
  late PageController pageController;
  late ScrollController scrollViewController;
  int currentPage = 0;

  @override
  bottomTapped(int index) {
    currentPage = index;
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    scrollViewController = ScrollController(initialScrollOffset: 0.0);
    super.onInit();
  }

  @override
  void dispose() {
    pageController.dispose();
    scrollViewController.dispose();
    super.dispose();
  }
}
