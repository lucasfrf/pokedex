import 'package:flutter/material.dart';
import 'package:pokedex/themes/theme_colors.dart';

class BoxType extends StatelessWidget {
  const BoxType(
      {super.key,
      required this.color,
      required this.textType,
      required this.context,
      required this.width,
      required this.height,
      this.fontSize = 14.0});
  final Color color;
  final String textType;
  final BuildContext context;
  final double width;
  final double height;
  final double fontSize;

  @override
  Widget build(context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      child: Center(
        child: Text(
          textType,
          style: TextStyle(
            color: ThemeColors.textButtonColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
