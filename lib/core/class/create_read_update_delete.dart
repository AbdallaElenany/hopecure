import 'dart:convert';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../constant/color.dart';
import '../function/check_internet.dart';
import '../services/services.dart';
import 'statusrequest.dart';

class Crud {
  MyServices myServices = Get.find();
  Future<Either<StatusRequest, Map>> postData(
      String linkurl, String data) async {
    if (await checkInternet()) {
      String? userId = myServices.sharedPreferences.getString("userId") ?? '';
      var response = await http.post(Uri.parse(linkurl),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': userId
          },
          body: data);

      print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responsebody = jsonDecode(response.body);
        print(responsebody);
        return Right(responsebody);
      } else {
        Get.defaultDialog(
            title: "warning".tr,
            titleStyle: const TextStyle(
                color: AppColor.white, fontWeight: FontWeight.bold),
            middleText: "serverfailure".tr);
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      Get.defaultDialog(
          title: "warning".tr,
          titleStyle: const TextStyle(
              color: AppColor.white, fontWeight: FontWeight.bold),
          middleText: "offlinefailure".tr);
      return const Left(StatusRequest.offlinefailure);
    }
  }
}
