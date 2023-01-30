import 'package:flutter/material.dart';

Container pokeFieldText() {
  return Container(
    height: 31,
    width: 122,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5.0),
        bottomLeft: Radius.circular(5.0),
      ),
      color: Colors.white,
    ),
    alignment: Alignment.bottomLeft,
    child: TextFormField(
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
    ),
  );
}
