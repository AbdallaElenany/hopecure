import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';

abstract class EnterNumberController extends GetxController {}

class EnterNumberControllerImp extends EnterNumberController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  StatusRequest statusRequest = StatusRequest.none;

  late TextEditingController yourNumber;

  @override
  void onInit() {
    yourNumber = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    yourNumber.dispose();

    super.dispose();
  }
}
