import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/services/services.dart';

abstract class SignUpController extends GetxController {}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  MyServices myServices = Get.find();
  StatusRequest statusRequest = StatusRequest.none;

  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController address;
  bool isshowpassword = true;
  bool checkValue = false;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    address = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    address.dispose();
    super.dispose();
  }
}
