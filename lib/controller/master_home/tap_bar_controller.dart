import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class TapBarController extends GetxController
    with GetSingleTickerProviderStateMixin {}

class TapBarControllerImp extends TapBarController {
  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
