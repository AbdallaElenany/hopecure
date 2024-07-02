import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../view/screen/master_home/account.dart';
import '../../view/screen/master_home/ask_your_doctor.dart';
import '../../view/screen/master_home/category.dart';
import '../../view/screen/master_home/home.dart';

abstract class BottomNavigationBarController extends GetxController {}

class BottomNavigationBarControllerImp extends BottomNavigationBarController {
  int currentIndex = 0;
  late List<Widget?> pages = [];
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void onInit() {
    pages.add(const Home());
    pages.add(const Category());
    pages.add(const SizedBox());
    pages.add(const AskYourDoctor());
    pages.add(const Account());
    super.onInit();
  }
}
