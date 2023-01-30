import 'package:flutter/material.dart';

Container numberPokemon(String id) {
  return Container(
    alignment: Alignment.bottomLeft,
    child: Text(
      id,
      style: const TextStyle(
        fontSize: 12,
      ),
    ),
  );
}
