// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIcon extends StatelessWidget {
  VoidCallback onTap;
  String svgPath;
  double height, width;
  double svgHeight, svgWidth;
  Color bgColor;
  CustomIcon({
    super.key,
    required this.onTap,
    required this.svgPath,
    required this.height,
    required this.width,
    required this.bgColor,
    required this.svgHeight,
    required this.svgWidth,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: bgColor,
        ),
        child: SvgPicture.asset(
          svgPath,
          height: svgHeight,
          width: svgWidth,
        ),
      ),
    );
  }
}
