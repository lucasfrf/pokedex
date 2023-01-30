import 'package:flutter/material.dart';

InkWell pokeButtonSearch() {
  return InkWell(
    onTap: () {},
    child: Container(
      height: 31,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
        boxShadow: kElevationToShadow[2],
        color: const Color.fromARGB(255, 234, 104, 109),
      ),
      child: const Icon(Icons.search),
    ),
  );
}
