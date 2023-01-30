import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
    required this.statsValue,
    required this.statsColor,
    required this.title,
  });
  final double statsValue;
  final Color statsColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Container(
          height: 8,
          width: 200,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.0),
            color: Colors.white,
          ),
          child: LinearProgressIndicator(
            color: statsColor,
            value: statsValue,
            minHeight: 100,
          ),
        ),
      ],
    );
  }
}
