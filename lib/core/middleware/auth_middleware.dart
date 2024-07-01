import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/routes.dart';
import '../services/services.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("auth") == "1") {
      return const RouteSettings(name: AppRoute.masterHome);
    }
    return null;
  }
}
