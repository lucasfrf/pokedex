import 'package:flutter/material.dart';

class BoxPokemon extends StatelessWidget {
  const BoxPokemon({super.key, required this.boxContent});
  final Widget boxContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5.0),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: boxContent,
    );
  }
}
