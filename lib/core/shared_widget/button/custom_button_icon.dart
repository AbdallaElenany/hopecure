import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButtomIcon extends StatelessWidget {
  final String image;
  final Color? colorButton;
  final Gradient? colorGradient;
  final void Function()? onTap;
  final BoxBorder? border;
  final double height;
  final double width;

  const CustomButtomIcon({
    super.key,
    this.colorButton,
    this.onTap,
    required this.image,
    required this.height,
    required this.width,
    this.colorGradient,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: colorGradient,
          color: colorButton,
          border: border,
        ),
        child: SvgPicture.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
