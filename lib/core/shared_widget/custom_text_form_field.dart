import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constant/color.dart';

class CustomTextFormField extends StatelessWidget {
  final String hinttext;

  final IconData? iconData;
  final IconData? iconPrefixData;
  final bool isNumber;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool? obscureText;
  final void Function()? onTapIcon;
  final double heightContainer;
  final String? suffixText;
  final bool showSuffix;
  final bool showSuffixIcon;
  final bool showPrefixIcon;

  const CustomTextFormField({
    super.key,
    required this.hinttext,
    this.iconData,
    required this.mycontroller,
    required this.isNumber,
    required this.valid,
    this.obscureText,
    this.onTapIcon,
    required this.heightContainer,
    this.suffixText,
    required this.showSuffix,
    required this.showSuffixIcon,
    this.iconPrefixData,
    required this.showPrefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: heightContainer,
      margin: EdgeInsets.only(top: 15.h, bottom: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColor.whiteGray,
          width: 1,
        ),
        color: AppColor.white,
      ),
      child: TextFormField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.emailAddress,
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false ? false : true,
        style: TextStyle(fontSize: 14.sp, color: AppColor.black),
        decoration: InputDecoration(
          isDense: true,
          hintText: hinttext,
          hintStyle: TextStyle(fontSize: 12.sp, color: AppColor.gray),
          contentPadding:
              EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
          border: InputBorder.none,
          prefixIcon: showPrefixIcon
              ? Icon(
                  iconPrefixData,
                  color: AppColor.blue,
                  size: 25.0,
                )
              : null,
          suffix: showSuffix ? Text(suffixText!) : null,
          suffixIcon: showSuffixIcon
              ? InkWell(
                  onTap: onTapIcon,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: FaIcon(iconData, color: AppColor.blue),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
