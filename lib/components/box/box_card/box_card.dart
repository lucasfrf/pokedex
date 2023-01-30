import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  const BoxCard({super.key, required this.boxContent, required this.color});
  final Color color;
  final Widget boxContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).cardColor),
      child: boxContent,
    );
  }
}
