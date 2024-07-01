import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/services/services.dart';

abstract class LoginController extends GetxController {
  goToMasterHome();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;

  late TextEditingController email;
  late TextEditingController password;
  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  goToMasterHome() {
    myServices.sharedPreferences.setString("auth", "1");
    Get.offAllNamed(AppRoute.masterHome);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
