import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtomIconWithBlur extends StatelessWidget {
  final String image;
  final Color? colorButton;
  final void Function()? onTap;
  final double height;
  final double width;

  const ButtomIconWithBlur({
    super.key,
    this.colorButton,
    this.onTap,
    required this.image,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          width: width,
          height: height,
          color: Colors.transparent,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
            child: SvgPicture.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
