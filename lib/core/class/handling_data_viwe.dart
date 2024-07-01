import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/color.dart';
import 'statusrequest.dart';

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Scaffold(
            backgroundColor: AppColor.white,
            body: Center(child: Text("loading".tr)))
        : widget;
  }
}
